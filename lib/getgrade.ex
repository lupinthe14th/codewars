defmodule GetGrade do
  def get_grade(a, b, c) do
    score = (a + b + c) / 3

    cond do
      score >= 90 && score <= 100 ->
        "A"

      score >= 80 && score < 90 ->
        "B"

      score >= 70 && score < 80 ->
        "C"

      score >= 60 && score < 70 ->
        "D"

      score >= 0 && score < 60 ->
        "F"
    end
  end
end
