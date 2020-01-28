defmodule Century do
  # Change the result depending on whether it is divisible by 100
  def century(year) do
    if rem(year, 100) == 0 do
      div(year, 100)
    else
      div(year, 100) + 1
    end
  end
end
