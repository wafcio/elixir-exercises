defmodule Euler11Test do
  use ExUnit.Case
  doctest Euler11

  test "with big input" do
    assert Euler11.run() == 70_600_674
  end
end
