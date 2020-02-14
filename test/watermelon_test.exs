defmodule TestWatermelon do
  use ExUnit.Case

  import Watermelon, only: [divide: 1]

  test "simple cases" do
    assert divide(4) == true
    assert divide(1) == false
    assert divide(2) == false
    assert divide(5) == false
    assert divide(88) == true
    assert divide(100) == true
    assert divide(67) == false
    assert divide(90) == true
    assert divide(10) == true
    assert divide(99) == false
    assert divide(32) == true
  end
end
