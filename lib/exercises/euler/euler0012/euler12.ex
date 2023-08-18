defmodule Euler12 do
  def run(limit_divisor_count) do

    find_triangle_number(limit_divisor_count)
  end

  defp find_triangle_number(limit_divisor_count, triangle_number_p \\ 0, triangle_number \\ 0, divisor_count \\ 0)
  defp find_triangle_number(limit_divisor_count, _triangle_number_p, triangle_number, divisor_count) when divisor_count > limit_divisor_count  do
    triangle_number
  end

  defp find_triangle_number(limit_divisor_count, triangle_number_p, triangle_number, _divisor_count) do
    new_triangle_number_p = triangle_number_p + 1
    new_triangle_number = triangle_number + new_triangle_number_p
    floored_sqrt = :math.sqrt(new_triangle_number) |> Float.floor |> round
    divisors = 1..floored_sqrt |> Enum.filter(fn(m) -> rem(new_triangle_number, m) == 0 end)
    new_divisor_count = length(divisors) * 2

    find_triangle_number(limit_divisor_count, new_triangle_number_p, new_triangle_number, new_divisor_count)
  end
end
