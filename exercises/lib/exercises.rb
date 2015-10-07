class Array
  def my_uniq
    new_arr = []

    each do |el|
      new_arr << el unless new_arr.include?(el)
    end

    new_arr
  end

  def two_sum

    result = []

    self.each_with_index do |el1, i|
      self[i+1..-1].each_with_index do |el2, j|
        j += i+1
        result << [i,j] if el1 + el2 == 0
      end
    end

    result
  end

  def my_transpose

    result = Array.new(self[0].length) { Array.new(self.length) }

    self.each_with_index do |el1, i|
      self.each_with_index do |el2, j|
        result[i][j] = self[j][i]
      end
    end

    result
  end

end


def stock_picker(arr)
  highest = 0
  answer = []

  (0...arr.count).each do |i|
    (i...arr.count).each do |j|
      sum = arr[j] - arr[i]
      if sum > highest
        highest = sum
        answer = [i,j]
      end
    end
  end

  answer
end

class TowersOfHanoi

  attr_accessor :board

  def initialize
    @board = [[3,2,1], [], []]
  end

  def render
    board.map { |row| row.join(" ") }.join("\n")
  end

  def move(from, to)
    take = board[from].pop

    self.board[to] << take

    nil
  end

  def won?
    board[0].empty? && (board[1].empty? || board[2].empty?)
  end


end
