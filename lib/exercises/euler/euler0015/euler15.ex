defmodule Euler15 do
  def run(size) do
    factorial(2 * size) / (factorial(size) * factorial(size))
    |> Kernel.trunc()
  end

  defp factorial(1), do: 1
  defp factorial(x) when is_integer(x) and x > 0, do: x*factorial(x-1)
end
