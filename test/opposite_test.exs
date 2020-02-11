defmodule TestOpposite do
  use ExUnit.Case

  test "returns a number's opposite" do
    assert Opposite.opposite(1) == -1
  end
end
