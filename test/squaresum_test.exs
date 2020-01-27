defmodule TestSolution do
  use ExUnit.Case

  defp testing(nums, exp) do
    act = SquareSum.square_sum(nums)

    assert act == exp,
           "Given list #{inspect(nums, charlist: :as_lists)}, expected #{exp}, got #{act}"
  end

  test "fixed test" do
    testing([1, 2], 5)
    testing([0, 3, 4, 5], 50)
    testing([], 0)
  end
end
