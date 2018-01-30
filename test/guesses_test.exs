defmodule IslandsEngine.GuessesTest do
  use ExUnit.Case, async: true
  doctest IslandsEngine.Guesses

  alias IslandsEngine.Guesses

  test "a new set of guesses is empty" do
    %IslandsEngine.Guesses{hits: hits, misses: misses} = Guesses.new()

    assert MapSet.size(hits) == 0
    assert MapSet.size(misses) == 0
  end
end
