class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    nums = [*2..@limit]
    answer = []
    @limit.times do |i|
      answer << nums.shift
      nums.delete_if{|num| num % answer.last == 0}
    end
    answer.compact
  end
end

module BookKeeping
  VERSION = 1
end
