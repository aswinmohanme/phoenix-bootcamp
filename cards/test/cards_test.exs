defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck returns 20 elements" do
    assert length(Cards.create_deck()) == 20
  end

  test "create_hand returns a hand of length hand_size" do
    hand_size = 4
    {hand, deck} = Cards.create_hand(hand_size)
    assert length(hand) == hand_size
  end
end
