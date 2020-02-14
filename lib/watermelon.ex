defmodule Watermelon do
  require Integer

  def divide(weight) when weight <= 2, do: false

  def divide(weight) when weight > 2, do: Integer.is_even(weight)
end
