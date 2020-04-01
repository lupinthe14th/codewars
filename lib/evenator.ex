defmodule Evenator do
  require Integer

  def even?(n) when is_float(n), do: false
  def even?(n) when is_integer(n), do: Integer.is_even(n)
end
