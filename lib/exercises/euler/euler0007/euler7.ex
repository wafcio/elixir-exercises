defmodule Euler7 do
  def run(n) do
    find_prime_number(n, 1, 2)
  end

  def find_prime_number(n, i, number) when i == n do
    case prime?(number) do
      true  -> number
      false -> find_prime_number(n, i, number + 1)
    end
  end

  def find_prime_number(n, i, number) when i < n do
    case prime?(number) do
      true -> find_prime_number(n, i + 1, number + 1)
      false -> find_prime_number(n, i, number + 1)
    end
  end

  defp prime?(n) when n in [2, 3], do: true
  defp prime?(n) do
    floored_sqrt = :math.sqrt(n)
      |> Float.floor
      |> round
    !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
  end
end
