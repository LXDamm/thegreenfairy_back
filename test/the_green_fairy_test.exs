defmodule TheGreenFairyTest do
  use ExUnit.Case
  doctest TheGreenFairy

  test "greets the world" do
    assert TheGreenFairy.hello() == :world
  end
end
