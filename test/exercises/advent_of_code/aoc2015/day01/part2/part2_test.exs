defmodule AoC2015Day01Part2Test do
  use ExUnit.Case
  doctest AoC2015Day01Part2

  test "with input ()())" do
    assert AoC2015Day01Part2.run("()())") == 5
  end

  test "with input )" do
    assert AoC2015Day01Part2.run(")") == 1
  end

  test "with input big input" do
    {_, input} = File.read("test/support/advent_of_code/2015/day_01/input.txt")
    assert AoC2015Day01Part2.run(input) == 1_795
  end
end
