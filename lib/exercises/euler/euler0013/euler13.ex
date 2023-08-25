defmodule Euler13 do
  def run() do
    read_file()
    |> String.split("\n")
    |> convert_to_ints
    |> Enum.sum
    |> to_string
    |> String.slice(0..9)
  end

  defp read_file do
    {:ok, content} = File.read("lib/exercises/euler/euler0013/big_numbers.txt")
    content |> String.trim
  end

  defp convert_to_ints(collection) do
    Enum.map(collection, fn(el) ->
      {value, _} = Integer.parse(el)
      value
    end)
  end
end
