defmodule Maps do
  def maps(x) do
    x
    |> Enum.map(fn x -> 2 * x end)
  end
end
