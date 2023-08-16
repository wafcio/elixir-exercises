defmodule Euler9 do
  def run(n) do
    find_product(1, 2, n)
  end

  def find_product(a, b, n) do
    pow_a = :math.pow(a, 2) |> Float.floor |> round
    pow_b = :math.pow(b, 2) |> Float.floor |> round
    c = :math.sqrt(pow_a + pow_b) |> Float.floor |> round
    difference = :math.sqrt(pow_a + pow_b) - c
    sum = a + b + c

    cond do
      sum < n ->
        find_product(a, b + 1, n)
      sum > n || (sum == n && difference > 0) ->
        find_product(a + 1, a + 2, n)
      sum == n && difference == 0 ->
        a * b * c
    end
  end
end
