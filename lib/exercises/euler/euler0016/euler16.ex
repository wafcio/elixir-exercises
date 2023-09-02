defmodule Euler16 do
  def run(power) do
    :math.pow(2, power)
    |> round
    |> to_string()
    |> String.graphemes
    |> Enum.map(fn(num) ->
      {int_value, _} = Integer.parse(num)
      int_value
    end)
    |> Enum.sum
  end
end
