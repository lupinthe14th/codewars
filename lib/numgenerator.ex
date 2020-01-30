defmodule NumGenerator do
  # SeeAlso: https://www.codewars.com/kata/reviews/58058d36d0070d471b00002e/groups/5870ea72468562786c00116a
  def generate_range(min, max, _) when min > max do
    []
  end

  def generate_range(min, max, step) do
    [min | generate_range(min + step, max, step)]
  end
end
