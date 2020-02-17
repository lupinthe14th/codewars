defmodule ExpressionMatter do
  def expression_matter(a, b, c) do
    a
    |> Kernel.*(b + c)
    |> max(a * b * c)
    |> max(a + b * c)
    |> max((a + b) * c)
    |> max(a + b + c)
    |> max(a * b + c)
  end
end
