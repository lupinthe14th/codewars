defmodule Maximizator do
  def super_size(n) do
    n
    |> Integer.digits()
    |> Enum.sort(&(&1 >= &2))
    |> Integer.undigits()
  end
end
