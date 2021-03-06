class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (0..@num).sum**2
  end

  def sum_of_squares
    (0..@num).inject{|sum, num| sum += num**2 }
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
