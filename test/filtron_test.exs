defmodule TestFiltron do
  use ExUnit.Case
  import Filtron, only: [divisible_by: 2]

  test "basic tests" do
    assert divisible_by([1, 2, 3, 4, 5, 6], 2) == [2, 4, 6]
    assert divisible_by([1, 2, 3, 4, 5, 6, 7, 8, 9], 3) == [3, 6, 9]
  end
end
