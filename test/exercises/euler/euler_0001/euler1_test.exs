defmodule Euler1Test do
  use ExUnit.Case
  doctest Euler1

  test "foo" do
    assert Euler1.run(999) == 233_168
  end
end
