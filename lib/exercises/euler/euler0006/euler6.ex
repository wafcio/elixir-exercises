defmodule Euler6 do
  def run(n) do
    {num1, num2} = calculate(1, n)

    (:math.pow(num2, 2) |> round) - num1
  end

  def calculate(m, max, num1 \\ 0, num2 \\ 0) when m <= max do
    new_num1 = num1 + :math.pow(m, 2) |> round
    new_num2 = num2 + m

    calculate(m + 1, max, new_num1, new_num2)
  end

  def calculate(m, max, num1, num2) do
    {num1, num2}
  end
end
