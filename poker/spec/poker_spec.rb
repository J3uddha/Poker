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

  describe "#initialize" do
    it "creates a deck with 52 elements" do

      expect(deck.cards.length).to eq(52)
    end

    it "creates new Card instances for each card" do

      expect(deck.cards.all?{|card| card.is_a?(Card)}).to be true
    end


  end


end

=begin
describe Hand do
  let(:hand) {Hand.new}


end

describe Player do
 let(:player) {Player.new}


end

describe Game do
let(:game) {Game.new}


end
=end
