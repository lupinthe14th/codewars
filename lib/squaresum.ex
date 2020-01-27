defmodule SquareSum do
  def square_sum(nums) do
    nums
    |> Enum.map(fn num -> num * num end)
    |> Enum.sum()
  end
end
