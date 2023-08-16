defmodule Euler4 do
  def run(n) do
    {a, _} = "1" <> String.duplicate("0", n - 1) |> Integer.parse
    {max, _} = "1" <> String.duplicate("0", n) |> Integer.parse

    find_largest_palindrom(a, a + 1, max , 0)
  end

  def find_largest_palindrom(a, b, max, largest_palindrom) when a == max do
    largest_palindrom
  end

  def find_largest_palindrom(a, b, max, largest_palindrom) when b == max do
    find_largest_palindrom(a + 1, a + 2, max, largest_palindrom)
  end

  def find_largest_palindrom(a, b, max, largest_palindrom) do
    result = a * b

    if to_string(result) == String.reverse(to_string(result)) && result > largest_palindrom do
      find_largest_palindrom(a, b + 1, max, result)
    else
      find_largest_palindrom(a, b + 1, max, largest_palindrom)
    end
  end
end
