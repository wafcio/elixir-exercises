defmodule Euler5 do
  def run(n) do
    find_all_prime_factors(2, n)
    |> Enum.reduce(1, fn(number, acc) -> acc * number end)
  end

  def find_all_prime_factors(number, n, factors \\ []) when number > n do
    factors
  end

  def find_all_prime_factors(number, n, factors) do
    current_factors = prime_factors(number)
    missing_factors = current_factors -- factors
    find_all_prime_factors(number + 1, n, factors ++ missing_factors)
  end

  def prime_factors(number, m \\ 2, factors \\ []) when number > 1 do
    if rem(number, m) == 0 do
      prime_factors(div(number, m), m, factors ++ [m])
    else
      prime_factors(number, m + 1, factors)
    end
  end

  def prime_factors(_number, _m, factors) do
    factors
  end
end
