defmodule StringUtils do
  def upper_case?(str) do
    str == String.upcase(str, :default)
  end
end
