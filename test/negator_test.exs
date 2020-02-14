defmodule TestNegator do
  use ExUnit.Case
  import Negator, only: [make_negative: 1]

  test "simple check" do
    assert make_negative(42) == -42
    assert make_negative(1) == -1
    assert make_negative(-5) == -5
    assert make_negative(0) == 0
  end
end
