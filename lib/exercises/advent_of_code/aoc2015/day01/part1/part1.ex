defmodule AoC2015Day01Part1 do
  def run(input) do
    result =
      input
      |> String.graphemes
      |> Enum.reduce(0, fn(char, acc) ->
        case char do
          "(" -> acc + 1
          ")" -> acc - 1
          _   -> acc
        end
      end)

    result
  end
end
