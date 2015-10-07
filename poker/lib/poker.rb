class Card

  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

end


class Deck

  CARD_VALUES = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
  CARD_SUITS = [:spades, :hearts, :clubs, :diamonds]

  attr_reader :cards
  def initialize
    @cards = []
    populate
    cards.shuffle
  end

  def populate
    CARD_SUITS.each do |suit|
      CARD_VALUES.each do |value|
        @cards << Card.new(suit, value)
      end
    end

    nil
  end

end
