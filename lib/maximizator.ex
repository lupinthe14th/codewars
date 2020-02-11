defmodule Maximizator do
  def super_size(n) do
    n
    |> Integer.to_string()
    |> String.split("", trim: true)
    |> Enum.sort(&(&1 >= &2))
    |> Enum.join()
    |> String.to_integer()
  end
end
