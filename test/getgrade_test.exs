defmodule TestGetGrade do
  use ExUnit.Case

  defp testing(a, b, c, e) do
    a = GetGrade.get_grade(a, b, c)
    assert a == e, "Given numbers #{a}, #{b}, and #{c}, expected #{e}, got #{a}"
  end

  test "basic tests" do
    testing(95, 90, 93, "A")
    testing(100, 85, 96, "A")
    testing(92, 93, 94, "A")
    testing(100, 100, 100, "A")
    testing(70, 70, 100, "B")
    testing(82, 85, 87, "B")
    testing(84, 79, 85, "B")
    testing(70, 70, 70, "C")
    testing(75, 70, 79, "C")
    testing(60, 82, 76, "C")
    testing(65, 70, 59, "D")
    testing(66, 62, 68, "D")
    testing(58, 62, 70, "D")
    testing(44, 55, 52, "F")
    testing(48, 55, 52, "F")
    testing(58, 59, 60, "F")
    testing(0, 0, 0, "F")
  end
end
