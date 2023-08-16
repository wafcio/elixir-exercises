defmodule Euler8 do
  def run(n) do
    big_number = read_big_number()
    find_product(n, big_number, 0, 0, String.length(big_number) - n)
  end

  def find_product(_n, _big_number, product, position, max_position) when position > max_position do
    product
  end

  def find_product(n, big_number, product, position, max_position) do
    temp_product = calculate_product(big_number, position, 0, n - 1, 1)

    if temp_product > product do
      find_product(n, big_number, temp_product, position + 1, max_position)
    else
      find_product(n, big_number, product, position + 1, max_position)
    end
  end

  def calculate_product(_big_number, _position, p, n, product) when p > n do
    product
  end

  def calculate_product(big_number, position, p, n, product) do
    {p_int, _} = big_number |> String.at(position + p) |> Integer.parse()
    calculate_product(big_number, position, p + 1, n, product * p_int)
  end

  def read_big_number do
    {_, content} = File.read("lib/exercises/euler/euler0008/big_number.txt")
    content |> String.replace("\n", "")
  end
end
