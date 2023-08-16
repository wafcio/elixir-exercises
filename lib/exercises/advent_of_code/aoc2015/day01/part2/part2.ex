defmodule AoC2015Day01Part2 do
  def run(input) do
    {status, position} =
      input
      |> String.graphemes
      |> Enum.with_index
      |> Enum.reduce({:continue, 0}, fn({char, index}, memo) ->
        {status, acc} = memo

        new_acc =
          case char do
            "(" -> acc + 1
            ")" -> acc - 1
            _   -> acc
          end

        cond do
          status == :continue && new_acc == -1 ->
            {:stop, index + 1}
          status == :stop ->
            {:stop, acc}
          true ->
            {:continue, new_acc}
        end
      end)

    cond do
      status == :continue -> -1
      status == :stop -> position
    end
  end
end
