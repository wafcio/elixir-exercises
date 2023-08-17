defmodule Euler3 do
  def run(n) do
    find_largest_prime_factor(n, 2)
  end

  def find_largest_prime_factor(n, m) when n > 1 do
    case rem(n, m) do
      0 -> find_largest_prime_factor(div(n, m), m)
      _ -> find_largest_prime_factor(n, m + 1)
    end
  end

  def find_largest_prime_factor(n, m) do
    m
  end
end
