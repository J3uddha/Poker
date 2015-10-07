require 'poker'
describe Card do
  let(:card) {Card.new(:spades, 1)}


  describe "#initialize" do

    it "assigns a suit" do
      expect(card.suit).to_not be(nil)
    end

    it "assigns a value" do
      expect(card.value).to_not be(nil)
    end

  end



end

describe Deck do
  let(:deck) {Deck.new}
  let(:deck2) {Deck.new}

  describe "#initialize" do
    it "creates a deck with 52 elements" do

      expect(deck.cards.length).to eq(52)
    end

    it "creates new Card instances for each card" do

      expect(deck.cards.all?{|card| card.is_a?(Card)}).to be true
    end

    it "shuffles the cards" do
      expect(deck.cards).to_not eq(deck2.cards)
    end


  end


end


describe Hand do
  let(:my_hand) {Hand.new(Deck.new)}

  describe "#initialize" do
    it "returns an array of 5 elements" do
      expect(my_hand.hand.length).to eq(5)
    end

    it "contains only card instances" do
      expect(my_hand.hand.all? { |c| c.is_a?(Card) }).to be true
    end

    it "recognizes straight flush" do
      sf_hand = [Card.new(:hearts, 3), Card.new(:hearts, 4), Card.new(:hearts, 5),
      Card.new(:hearts, 6), Card.new(:hearts, 7)]
      test_hand = Hand.new(Deck.new, sf_hand)

      expect(test_hand.straight? && test_hand.flush?).to be true
    end

    it "recognizes a four of a kind"

    it "recognizes a full house"

    it "recognizes a flush"


  end

end

=begin
describe Player do
 let(:player) {Player.new}


end

describe Game do
let(:game) {Game.new}


end
=end
