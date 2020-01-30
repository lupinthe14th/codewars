defmodule SumMix do
  def sumMin(list) do
    Enum.reduce(list, 0, fn
      x, acc when is_integer(x) -> acc + x
      x, acc when is_binary(x) -> acc + String.to_integer(x)
    end)
  end
end
