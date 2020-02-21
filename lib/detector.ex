# refarence: https://www.codewars.com/kata/reviews/577f8797ab34ea1d2d0001f8/groups/5d12c4e5c94074000129bf84
defmodule Detector do
  def better_than_average(class_points, your_points) do
    your_points > average([your_points | class_points])
  end

  defp average(numbers), do: div(Enum.sum(numbers), Enum.count(numbers))
end
