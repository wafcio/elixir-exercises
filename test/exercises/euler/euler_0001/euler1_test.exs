defmodule Euler1Test do
  use ExUnit.Case
  doctest Euler1

  test "with input 999" do
    assert Euler1.run(999) == 233_168
  end
end
