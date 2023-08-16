defmodule AoC2015Day01Part1Test do
  use ExUnit.Case
  doctest AoC2015Day01Part1

  test "with input (())" do
    assert AoC2015Day01Part1.run("(())") == 0
  end

  test "with input ()()" do
    assert AoC2015Day01Part1.run("()()") == 0
  end

  test "with input (((" do
    assert AoC2015Day01Part1.run("(((") == 3
  end

  test "with input (()(()(" do
    assert AoC2015Day01Part1.run("(()(()(") == 3
  end

  test "with input ))(((((" do
    assert AoC2015Day01Part1.run("))(((((") == 3
  end

  test "with input ())" do
    assert AoC2015Day01Part1.run("())") == -1
  end

  test "with input ))(" do
    assert AoC2015Day01Part1.run("))(") == -1
  end

  test "with input )))" do
    assert AoC2015Day01Part1.run(")))") == -3
  end

  test "with input big input" do
    {_, input} = File.read("test/support/advent_of_code/2015/day_01/input.txt")
    assert AoC2015Day01Part1.run(input) == 74
  end
end
