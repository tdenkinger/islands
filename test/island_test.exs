defmodule IslandsEngine.IslandTest do
  use ExUnit.Case, async: true
  doctest IslandsEngine.Island

  alias IslandsEngine.Island

  test "a new island is empty" do
    %Island{coordinates: coords, hit_coordinates: hits} = Island.new()

    assert MapSet.size(coords) == 0
    assert MapSet.size(hits) == 0
  end
end
