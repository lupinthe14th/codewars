defmodule TestBetween do
  use ExUnit.Case

  test "basic tests" do
    assert Between.between(0, 3) == [0, 1, 2, 3]
    assert Between.between(-2, 2) == [-2, -1, 0, 1, 2]

    assert Between.between(-10, 10) == [
             -10,
             -9,
             -8,
             -7,
             -6,
             -5,
             -4,
             -3,
             -2,
             -1,
             0,
             1,
             2,
             3,
             4,
             5,
             6,
             7,
             8,
             9,
             10
           ]
  end
end
