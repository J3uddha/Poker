class Card

  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def ==(other)
    self.value == other.value && self.suit == other.suit
  end
end


class Deck

  CARD_VALUES = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
  CARD_SUITS = [:spades, :hearts, :clubs, :diamonds]

  attr_reader :cards
  def initialize
    @cards = []
    populate
    cards.shuffle!
  end

  def populate
    CARD_SUITS.each do |suit|
      CARD_VALUES.each do |value|
        @cards << Card.new(suit, value)
      end
    end

    nil
  end

  # def draw
  #   cards.pop
  # end

end

class Hand

  HAND_VALUES = {
    :straight_flush => 800,
    :four_of_a_kind => 700,
    :full_house => 600,
    :flush => 500,
    :straight => 400,
    :three_of_a_kind => 300,
    :two_pair => 200,
    :one_pair => 100,
    :high_card => 0
  }

  # HAND_TYPE = {
  #     :straight_flush => Proc.new {|hand| straight? && flush?}
  #     :four_of_a_kind =>
  #     :full_house => @hand.map {|card| card.value}.uniq.length == 2
  #     :flush => flush?
  #     :straight => straight?
  #     :three_of_a_kind => ,
  #     :two_pair => ,
  #     :one_pair => ,
  #     :high_card => Proc.call {|hand| true}
  #
  # }

  attr_reader :deck, :hand
  def initialize(deck, starting_cards = nil)
    @deck = deck
    @hand = []
    starting_cards.nil? ? 5.times { draw } : @hand = starting_cards
    @hand.sort_by! {|card| card.value }
  end

  def draw
    hand << deck.cards.pop
  end

  def state

  end

  def straight?
    current_value = hand.first.value
    hand.each_with_index do |card|
      return false unless card.value == current_value
      current_value += 1
    end
    true
  end

  def flush?
    hand.all? {|card| card.suit == hand[0].suit}
  end


end
#
# class Game
#
#   def initialize
#     @deck = Deck.new
#   end
#
# end
