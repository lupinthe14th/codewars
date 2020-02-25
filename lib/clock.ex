defmodule Clock do
  def past(h, m, s) do
    (60 * 60 * h + 60 * m + s) * 1000
  end
end
