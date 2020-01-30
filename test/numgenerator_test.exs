defmodule TestNumGenerater do
  use ExUnit.Case
  import NumGenerator, only: [generate_range: 3]

  test "basic cases" do
    assert generate_range(2, 10, 2) == [2, 4, 6, 8, 10]
    assert generate_range(1, 10, 3) == [1, 4, 7, 10]
    assert generate_range(1, 10, 1) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    assert generate_range(1, 10, 4) == [1, 5, 9]
    assert generate_range(1, 10, 5) == [1, 6]
  end

  defp solution(min, max, step) do
    Stream.unfold(min, &{&1, &1 + step})
    |> Enum.take_while(&(&1 <= max))
  end

  test "random cases" do
    1..40
    |> Enum.each(fn _ ->
      min = :rand.uniform(20)
      max = :rand.uniform(70) + 30
      step = :rand.uniform(10)
      answer = solution(min, max, step)

      assert generate_range(min, max, step) == answer,
             "Got #{inspect(generate_range(min, max, step), limit: 100)} instead of #{
               inspect(answer, limit: 100)
             } " <>
               "for min: #{min}, max: #{max}, and step: #{step}"
    end)
  end
end
