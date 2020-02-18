defmodule TestMaps do
  use ExUnit.Case
  doctest Maps

  defp testing(x, exp) do
    actual = Maps.maps(x)

    msg = """
    Given list: #{inspect(x, charlists: :as_lists)}
    expected: #{inspect(exp, charlists: :as_lists)}
    got: #{inspect(actual, charlists: :as_lists)}
    """

    assert actual == exp, msg
  end

  test "fixed tests" do
    testing([1, 2, 3], [2, 4, 6])
    testing([4, 1, 1, 1, 4], [8, 2, 2, 2, 8])
    testing([2, 2, 2, 2, 2, 2], [4, 4, 4, 4, 4, 4])
  end
end
