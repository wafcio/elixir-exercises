defmodule Euler2 do
  def run(n) do
    num1 = 1
    num2 = 2
    sum = num2
    value = -1

    calculate_sum(n, num1, num2, sum, value)
  end

  def calculate_sum(n, num1, num2, sum, value) when value < n do
    new_value = num1 + num2

    new_sum =
      case rem(new_value, 2) do
        0 -> sum + new_value
        _ -> sum
      end

    calculate_sum(n, num2, new_value, new_sum, new_value)
  end

  def calculate_sum(n, num1, num2, sum, value) when value >= n do
    sum
  end
end
