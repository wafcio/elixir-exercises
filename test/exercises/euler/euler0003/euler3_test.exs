defmodule Euler3Test do
  use ExUnit.Case
  doctest Euler3

  test "with input 13_195" do
    assert Euler3.run(13_195) == 29
  end

  test "with input 600_851_475_143" do
    assert Euler3.run(60_0851_475_143) == 6_857
  end
end
