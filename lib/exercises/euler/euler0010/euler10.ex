defmodule Euler10 do
  def run(n) do
    calculate(2, n, 0)
  end

  defp calculate(number, n, sum) when number == n do
    sum
  end

  defp calculate(number, n, sum) do
    case prime?(number) do
      true  -> calculate(number + 1, n, sum + number)
      false -> calculate(number + 1, n, sum)
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
