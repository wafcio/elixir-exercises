defmodule Euler4Test do
  use ExUnit.Case
  doctest Euler4

  test "with input 2" do
    assert Euler4.run(2) == 9_009
  end

  test "with input 3" do
    assert Euler4.run(3) == 90_6609
  end
end
