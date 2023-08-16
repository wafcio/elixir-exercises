defmodule Euler5Test do
  use ExUnit.Case
  doctest Euler5

  test "with input 10" do
    assert Euler5.run(10) == 2_520
  end

  test "with input 20" do
    assert Euler5.run(20) == 232_792_560
  end
end
