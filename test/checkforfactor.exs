defmodule TestCheckForFactor do
  use ExUnit.Case

  defp testing(base, factor, exp) do
    act = CheckForFactor.check_for_factor(base, factor)
    assert act == exp, "Testing check_for_factor(#{base}, #{factor}), expected #{exp}, got #{act}"
  end

  test "should return true" do
    testing(10, 2, true)
    testing(63, 7, true)
    testing(2450, 5, true)
    testing(24_612, 3, true)
  end

  test "should return false" do
    testing(9, 2, false)
    testing(653, 7, false)
    testing(2453, 5, false)
    testing(24_617, 3, false)
  end
end
