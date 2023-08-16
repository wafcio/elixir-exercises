defmodule Euler9Test do
  use ExUnit.Case
  doctest Euler9

  test "with input 12" do
    assert Euler9.run(12) == 60
  end

  test "with input 1_000" do
    assert Euler9.run(1_000) == 31_875_000
  end
end
