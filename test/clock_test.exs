defmodule TestClock do
  use ExUnit.Case
  import Clock, only: [past: 3]

  test "some test description" do
    assert past(0, 1, 1) == 61_000
    assert past(1, 1, 1) == 3_661_000
    assert past(0, 0, 0) == 0
    assert past(1, 0, 1) == 3_601_000
    assert past(1, 0, 0) == 3_600_000
  end
end
