class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    nums = [*2..@limit]
    delete_nums = []
    2.upto(Math.sqrt(@limit)) do |i|
      0.step(@limit,i){|num| delete_nums << num if num != i}
    end
    nums - delete_nums
  end
end

module BookKeeping
  VERSION = 1
end
