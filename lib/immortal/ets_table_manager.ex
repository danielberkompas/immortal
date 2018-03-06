defmodule Immortal.ETSTableManager do
  @moduledoc """
  Creates and keeps an ETS table alive using the `heir` feature. Normally, an
  ETS table will die as soon as its owner process dies. This means that if the
  owner and consumer of the table are the same process, you can lose your table
  to a crash.

  However, if (prior to its death) your table sets a different process as its 
  heir, the crash will not delete the table. Hence, `Immortal.EtsTableManager`
  is designed to:

  1. Create an ETS table, setting itself as the heir.
  2. Give away ownership of the table to a named process of your choosing.   
  3. If the other process crashes, receive ownership of the table back and wait
     until that process is rebooted by the supervisor.
  4. Give ownership back to the other process after it reboots.

  ## Examples

  Set up your supervisor children like this:

      children = [
        worker(YourApp.TableConsumer, []),
        worker(Immortal.ETSTableManager, [YourApp.TableConsumer, [:public]])
      ]

  `Immortal.EtsTableManager` will wait until your `YourApp.TableConsumer`
  process boots, and then hand over control of the table. The `[:public]`
  argument is a configuration list that will be passed to `:ets.new/2` when
  the ETS table is created.

  The `YourApp.TableConsumer` module should be a `GenServer`, and implement
  the following callback in order to receive control of the table:

      def handle_info({:"ETS-TRANSFER", table, _manager_pid, _data}, state) do
        new_state = ... # add table to your state
        {:noreply, new_state}
      end
  """

  use GenServer

  @doc """
  Start a new TableManager process.

  - `target_process_name`: The name of the process that you want to give the
    table away to. The process must be named so that TableManager can find it
    again if it dies.

  - `ets_options`: Any options you want to pass to `:ets.new/2`. If the 
    `:named_table` option is passed, the ETS table's name will be the same
    as `target_process_name`.

  ## Example

      iex> {:ok, pid} = Immortal.ETSTableManager.start_link(TableConsumer, [:public])
      ...> is_pid(pid)
      true
  """
  @spec start_link(atom, list) :: {:ok, pid}
  def start_link(target_process_name, ets_options \\ []) do
    {:ok, pid} = GenServer.start_link(__MODULE__, :ok)
    GenServer.call(pid, {:create_table, target_process_name, ets_options})
    {:ok, pid}
  end

  @doc false
  def init(args) do
    {:ok, args}
  end

  @doc """
  Get the ID of the ETS table that a TableManager is currently managing.
  """
  @spec table(pid) :: integer
  def table(manager) do
    GenServer.call(manager, :retrieve_table)
  end

  ###
  # GenServer API
  ###

  @doc "Create and give away the ETS table"
  def handle_call({:create_table, target_process_name, ets_options}, _from, _state) do
    ets_options = ets_options ++ [{:heir, self(), {}}]
    table = :ets.new(target_process_name, ets_options)
    give_away(table, target_process_name)
    {:reply, table, {table, target_process_name}}
  end

  @doc "Retrieve the ETS table"
  def handle_call(:retrieve_table, _from, {table, _} = state) do
    {:reply, table, state}
  end

  @doc "Handle the ETS transfer if CallTracker crashes"
  def handle_info({:"ETS-TRANSFER", table, _pid, _data}, {_, target_process_name} = state) do
    give_away(table, target_process_name)
    {:noreply, state}
  end

  ###
  # Private API
  ###

  defp give_away(table, target_process_name) do
    pid = wait_for(target_process_name)
    :ets.give_away(table, pid, {})
  end

  defp wait_for(module) do
    pid = Process.whereis(module)

    if pid && Process.alive?(pid) do
      pid
    else
      wait_for(module)
    end
  end
end
