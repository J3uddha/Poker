require 'exercises'

describe Array do
  let(:arr) {[1, 2, 3, 3, 3]}
  let(:matrix) {[[1, 2, 3], [4, 5, 6], [7, 8, 9]]}

  describe "#my_uniq" do

    it "removes duplicates from an array" do

      expect(arr.my_uniq.length).to eq(3)
    end

    it "returns unique elements in the order they appeared" do
      expect(arr.my_uniq).to eq(arr.uniq)
    end

    it "does not modify the original array" do
      arr.my_uniq
      expect(arr).to eq([1, 2, 3, 3, 3])
    end

  end

  describe "#two_sum" do
    it "finds indices of all sum-zero pairs" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq ([[0, 4], [2, 3]])

    end

  end

  describe "#my_transpose" do
    it "swaps columns and rows" do
      expect(matrix.my_transpose).to eq([[1,4,7],[2,5,8],[3,6,9]])
    end

    it "does not modify the original" do
      expect{matrix.my_transpose}.to_not change{matrix}
    end

  end

end

describe "#stock_picker" do
  let(:stocks1) {[500, 10, 5, 10, 25]}
  let (:stock_method) {stock_picker(stocks1)}

  # it "returns an array" do
  #   expect(stock_picker(stocks1).class).to eq(Array)
  # end
  #
  # it "return with two elements" do
  #   expect(stock_picker(stocks1).length).to eq(2)
  # end

  it "returns values in order" do
    expect(stock_method[0]).to eq(stock_method.min)
  end

  it "enforces order of buying & selling dates" do
    expect(stock_method).to_not eq([2, 0])
  end

  it "returns the correct answer" do
    expect(stock_method).to eq([2, 4])
  end

end


describe TowersOfHanoi do

  let(:game) {TowersOfHanoi.new}

  describe "#render" do

    it "returns expected string" do
      expect(game.render).to eq ("3 2 1\n\n")
    end

    it "updates" do

      game.board = [[3,2], [1], []]

      expect(game.render).to eq ("3 2\n1\n")
    end

  end

  describe "#move" do

    it "moves discs from one peg to another" do
      game.move(0,1)
      expect(game.board).to eq([[3,2], [1], []])
    end

    it "doesn't delete discs" do
      expect(game.board.flatten.length).to eq(3)
    end

  end

  describe "#won?" do

    it "returns false unless peg 0 is empty" do
      expect(game.won?).to be false
    end


    it "returns true if peg 0 & peg 2 is empty" do
      game.board = [[],[3,2,1],[]]
      expect(game.won?).to be true
    end

    it "returns true if peg 0 & peg 1 is empty" do
      game.board = [[],[],[3,2,1]]
      expect(game.won?).to be true
    end

  end



end
