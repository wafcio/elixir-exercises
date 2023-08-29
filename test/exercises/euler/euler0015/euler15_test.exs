defmodule Euler15Test do
  use ExUnit.Case
  doctest Euler15

  test "with input 2" do
    assert Euler15.run(2) == 6
  end

  test "with input 20" do
    assert Euler15.run(20) == 137_846_528_820
  end
end
