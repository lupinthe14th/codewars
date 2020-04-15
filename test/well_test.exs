defmodule TestWell do
  use ExUnit.Case

  defp testing(x, exp) do
    act = Well.well(x)
    assert act == exp, "Given list #{inspect(x)}, expected #{exp}, got #{act}"
  end

  test "basic tests" do
    testing(["bad", "bad", "bad"], "Fail!")
    testing(["good", "bad", "bad", "bad", "bad"], "Publish!")

    testing(
      ["good", "bad", "bad", "bad", "bad", "good", "bad", "bad", "good"],
      "I smell a series!"
    )
  end
end
