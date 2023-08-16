defmodule Euler8Test do
  use ExUnit.Case
  doctest Euler8

  test "with input 4" do
    assert Euler8.run(4) == 5_832
  end

  test "with input 13" do
    assert Euler8.run(13) == 23_514_624_000
  end
end
