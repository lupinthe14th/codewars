defmodule TestMultiply do
  use ExUnit.Case

  test "Multiply a * b" do
    assert Multiply.multiply(2, 3) == 6
  end
end
