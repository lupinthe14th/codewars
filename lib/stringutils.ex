defmodule StringUtils do
  import String, only: [upcase: 1]

  def upper_case?(str) do
    str == String.upcase(str, :default)
  end
end
