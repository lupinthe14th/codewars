defmodule Well do
  def well(x) do
    x
    |> Enum.count(fn string -> string == "good" end)
    |> check()
  end

  def check(c) when c > 2, do: "I smell a series!"
  def check(c) when c > 0 and c <= 2, do: "Publish!"
  def check(c) when c == 0, do: "Fail!"
end
