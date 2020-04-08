defmodule StringUtils do
  def upper_case?(str) do
    str == String.upcase(str, :default)
  end

  def alter_case(str) do
    str
    |> String.to_charlist()
    |> Enum.map(&_alter(&1))
    |> List.to_string()
  end

  defp _alter(c) when c in ?a..?z, do: c - 32
  defp _alter(c) when c in ?A..?Z, do: c + 32
  defp _alter(c), do: c
end
