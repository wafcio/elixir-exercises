defmodule Euler6Test do
  use ExUnit.Case
  doctest Euler6

  test "with input 10" do
    assert Euler6.run(10) == 2_640
  end

  test "with input 100" do
    assert Euler6.run(100) == 25_164_150
  end
end
