defmodule TestDigitizer do
  use ExUnit.Case
  import Digitizer, only: [digitize: 1]

  test "basic tests" do
    assert digitize(35_231) == [1, 3, 2, 5, 3]
    assert digitize(348_597) == [7, 9, 5, 8, 4, 3]
  end
end
