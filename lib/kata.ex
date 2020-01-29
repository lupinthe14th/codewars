defmodule Kata do
  @spec is_divisible(pos_integer(), pos_integer(), pos_integer()) :: boolean()
  # 8 kyu/Is n divisible by x and y?
  def is_divisible(n, x, y) do
    # code
    if rem(n, x) == 0 && rem(n, y) == 0 do
      true
    else
      false
    end
  end
end
