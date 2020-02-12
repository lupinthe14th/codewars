defmodule Heronizer do
  def no_boring_zeros(0), do: 0

  def no_boring_zeros(n) when rem(n, 10) == 0 do
    no_boring_zeros(div(n, 10))
  end

  def no_boring_zeros(n), do: n
end
