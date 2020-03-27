defmodule WeirdString do
  def triple_trouble(one, two, three) do
    [one, two, three]
    |> Enum.map(&String.codepoints/1)
    |> List.zip()
    |> List.foldr([], fn x, acc -> Tuple.to_list(x) ++ acc end)
    |> List.to_string()
  end
end
