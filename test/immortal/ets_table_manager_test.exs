defmodule Immortal.ETSTableManagerTest do
  use ExUnit.Case
  alias Immortal.ETSTableManager, as: TableManager

  defmodule TableConsumer do
    use GenServer

    def start do
      GenServer.start(__MODULE__, :ok, name: __MODULE__)
    end

    def init(args) do
      {:ok, args}
    end

    def restart do
      process = Process.whereis(__MODULE__)
      Process.exit(process, :normal)
      start()
    end

    def table do
      GenServer.call(__MODULE__, :retrieve_table)
    end

    ###
    # GenServer API
    ###

    def handle_call(:retrieve_table, _from, table) do
      {:reply, table, table}
    end

    def handle_info({:"ETS-TRANSFER", table, _pid, _data}, _state) do
      {:noreply, table}
    end
  end

  setup do
    TableConsumer.start()
    {:ok, manager} = TableManager.start_link(TableConsumer, [:public])
    {:ok, manager: manager}
  end

  doctest TableManager

  test "ETS table shares table consumer name when :named_table is passed" do
    TableManager.start_link(TableConsumer, [:public, :named_table])
    info = :ets.info(TableConsumer)
    assert info[:type] == :set
  end

  test "ETS table attributes can be customized when manager starts" do
    {:ok, manager} = TableManager.start_link(TableConsumer, [:ordered_set])
    table = TableManager.table(manager)
    consumer = Process.whereis(TableConsumer)
    info = :ets.info(table)

    assert info[:type] == :ordered_set
    assert info[:owner] == consumer
    assert info[:heir] == manager
  end

  test "can provide an ETS table to a properly configured consumer", %{manager: manager} do
    managed_table = TableManager.table(manager)
    assert is_reference(managed_table)
    assert TableConsumer.table() == managed_table
  end

  test "the table survives restarts of the consumer" do
    # Insert some data
    table = TableConsumer.table()
    :ets.insert(table, {:test, "value"})

    # Restart the TableConsumer process
    TableConsumer.restart()
    table = TableConsumer.table()

    # Ensure data is still present
    [value] = :ets.lookup(table, :test)
    assert value == {:test, "value"}
  end
end
