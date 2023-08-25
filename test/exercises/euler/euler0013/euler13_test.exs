defmodule Euler13Test do
  use ExUnit.Case
  doctest Euler13

  test "with valid numbers" do
    assert Euler13.run() == "5537376230"
  end
end
