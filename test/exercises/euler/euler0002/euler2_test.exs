defmodule Euler2Test do
  use ExUnit.Case
  doctest Euler2

  test "with input 4_000_000" do
    assert Euler2.run(4_000_000) == 4_613_732
  end
end
