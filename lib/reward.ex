defmodule Reward do
  def bonus_time(salary, true), do: "$#{salary * 10}"
  def bonus_time(salary, false), do: "$#{salary}"
end
