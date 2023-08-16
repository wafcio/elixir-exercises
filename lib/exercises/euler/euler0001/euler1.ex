defmodule Euler1 do
  def run(n) do
    Enum.to_list(1..n)
    |> Enum.filter(fn(number) -> rem(number, 3) == 0 || rem(number, 5) == 0 end)
    |> Enum.sum
  end
end
