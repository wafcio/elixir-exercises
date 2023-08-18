defmodule Euler12Test do
  use ExUnit.Case
  doctest Euler12

  test "with input 5" do
    assert Euler12.run(5) == 28
  end

  test "with input 100" do
    assert Euler12.run(100) == 73_920
  end

  test "with input 500" do
    assert Euler12.run(500) == 76_576_500
  end
end
