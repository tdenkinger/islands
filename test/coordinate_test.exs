defmodule IslandsEngine.CoordinateTest do
  use ExUnit.Case
  doctest IslandsEngine.Coordinate

  test "creates a coordinate when within bounds of the board" do
    {:ok, coordinate} = IslandsEngine.Coordinate.new(1, 1)
    assert coordinate == %IslandsEngine.Coordinate{row: 1, col: 1}
  end

  test "errors when a row is out of bounds" do
    {:error, message} = IslandsEngine.Coordinate.new(11, 1)
    assert message == :invalid_coordinates
  end

  test "errors when a column is out of bounds" do
    {:error, message} = IslandsEngine.Coordinate.new(1, 11)
    assert message == :invalid_coordinates
  end
end
