defmodule Euler16Test do
  use ExUnit.Case
  doctest Euler16

  test "with input 15" do
    assert Euler16.run(15) == 26
  end

  test "with input 1_000" do
    assert Euler16.run(1_000) == 1_366
  end
end
