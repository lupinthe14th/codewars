defmodule Filtron do
  def divisible_by(numbers, divisor) do
    numbers
    |> Enum.filter(fn x -> rem(x, divisor) == 0 end)
  end
end
