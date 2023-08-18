defmodule Euler11 do
  def run() do
    content = read_file()
    product = 0

    [
      check_horizontally_and_vertically(content, product),
      check_diagonally(content, product)
    ]
    |> Enum.max
  end

  defp read_file do
    {:ok, content} = File.read("lib/exercises/euler/euler0011/grid.txt")
    content
    |> String.trim
    |> String.split("\n")
    |> Enum.map(fn(el) ->
      el
      |> String.split(" ")
    end)
  end

  defp check_horizontally_and_vertically(content, product) do
    0..19
    |> Enum.map(fn(num1) ->
      0..16
      |> Enum.map(fn(num2) ->
        {v1, _} = content |> Enum.at(num1) |> Enum.at(num2) |> Integer.parse
        {v2, _} = content |> Enum.at(num1) |> Enum.at(num2 + 1) |> Integer.parse
        {v3, _} = content |> Enum.at(num1) |> Enum.at(num2 + 2) |> Integer.parse
        {v4, _} = content |> Enum.at(num1) |> Enum.at(num2 + 3) |> Integer.parse
        new_product_1 = [v1, v2, v3, v4] |> Enum.product

        {v1, _} = content |> Enum.at(num2) |> Enum.at(num1) |> Integer.parse
        {v2, _} = content |> Enum.at(num2 + 1) |> Enum.at(num1) |> Integer.parse
        {v3, _} = content |> Enum.at(num2 + 2) |> Enum.at(num1) |> Integer.parse
        {v4, _} = content |> Enum.at(num2 + 3) |> Enum.at(num1) |> Integer.parse
        new_product_2 = [v1, v2, v3, v4] |> Enum.product

        [product, new_product_1, new_product_2] |> Enum.max
      end)
      |> Enum.max
    end)
    |> Enum.max
  end

  defp check_diagonally(content, product) do
    0..16
    |> Enum.map(fn(num1) ->
      0..16
      |> Enum.map(fn(num2) ->
        {v1, _} = content |> Enum.at(num1) |> Enum.at(num2) |> Integer.parse
        {v2, _} = content |> Enum.at(num1 + 1) |> Enum.at(num2 + 1) |> Integer.parse
        {v3, _} = content |> Enum.at(num1 + 2) |> Enum.at(num2 + 2) |> Integer.parse
        {v4, _} = content |> Enum.at(num1 + 3) |> Enum.at(num2 + 3) |> Integer.parse
        new_product_1 = [v1, v2, v3, v4] |> Enum.product

        {v1, _} = content |> Enum.at(num1 + 3) |> Enum.at(num2) |> Integer.parse
        {v2, _} = content |> Enum.at(num1 + 2) |> Enum.at(num2 + 1) |> Integer.parse
        {v3, _} = content |> Enum.at(num1 + 1) |> Enum.at(num2 + 2) |> Integer.parse
        {v4, _} = content |> Enum.at(num1) |> Enum.at(num2 + 3) |> Integer.parse
        new_product_2 = [v1, v2, v3, v4] |> Enum.product

        [product, new_product_1, new_product_2] |> Enum.max
      end)
      |> Enum.max
    end)
    |> Enum.max
  end
end
