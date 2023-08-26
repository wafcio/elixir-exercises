defmodule Euler14 do
  def run() do
    find_starting_number(1, 1_000_000, 0, 0)
  end

  defp find_starting_number(current, limit, _max, start) when current > limit do
    start
  end

  defp find_starting_number(current, limit, max, start) do
    count = count_terms(current, 1)
    if count > max do
      find_starting_number(current + 1, limit, count, current)
    else
      find_starting_number(current + 1, limit, max, start)
    end
  end

  defp count_terms(n, count) when n == 1 do
    count
  end

  defp count_terms(n, count) do
    if rem(n, 2) == 0 do
      count_terms(div(n, 2), count + 1)
    else
      count_terms((3 * n) + 1, count + 1)
    end
  end
end
