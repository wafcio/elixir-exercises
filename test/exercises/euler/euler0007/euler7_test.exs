defmodule Euler7Test do
  use ExUnit.Case
  doctest Euler7

  test "with input 6" do
    assert Euler7.run(6) == 13
  end

  test "with input 10_001" do
    assert Euler7.run(10_001) == 104_743
  end
end
