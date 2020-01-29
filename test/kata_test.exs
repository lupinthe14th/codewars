defmodule TestKata do
  use ExUnit.Case

  test "8 kyu/Is n divisible by x and y?" do
    assert !Kata.is_divisible(3, 3, 4)
    assert Kata.is_divisible(12, 3, 4)
    assert !Kata.is_divisible(8, 3, 4)
    assert Kata.is_divisible(48, 3, 4)
    assert Kata.is_divisible(100, 5, 10)
    assert !Kata.is_divisible(100, 5, 3)
    assert Kata.is_divisible(4, 4, 2)
    assert !Kata.is_divisible(5, 2, 3)
    assert Kata.is_divisible(17, 17, 17)
    assert Kata.is_divisible(17, 1, 17)
  end
end
