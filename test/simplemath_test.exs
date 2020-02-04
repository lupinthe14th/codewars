defmodule TestSimpleMath do
  use ExUnit.Case
  import SimpleMath, only: [double_integer: 1]

  test "double some nums" do
    assert double_integer(2) == 4
    assert double_integer(4) == 8
    assert double_integer(0) == 0
  end
end
