defmodule Immortal do
  @moduledoc """
  Immortal is a small collection of helper modules intended to make it easier
  to build a fault-tolerant OTP application. Each module tries to solve a
  common problem in the most concise possible way.

  ## Included Modules:

  - `Immortal.EtsTableManager`: Keep your ETS tables alive while your process
    is rebooted by your supervisor.
  """
end
