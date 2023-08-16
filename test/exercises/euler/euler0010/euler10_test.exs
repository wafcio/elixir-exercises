defmodule Euler10Test do
  use ExUnit.Case
  doctest Euler10

  test "with input 10" do
    assert Euler10.run(10) == 17
  end

  test "with input 2_000_000" do
    assert Euler10.run(2_000_000) == 142_913_828_922
  end
end
