defmodule Euler14Test do
  use ExUnit.Case
  doctest Euler14

  test "with valid numbers" do
    assert Euler14.run() == 837_799
  end
end
