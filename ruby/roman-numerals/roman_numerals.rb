class Integer
  def to_roman
    num = self
    units = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
    letters = %w(M CM D CD C XC L XL X IX V IV I)
    units.each_with_index.with_object("") {|(unit, i), romanized|
      num.div(unit).times {
        romanized << letters[i]
      }
      num %= unit
    }
  end
end

module BookKeeping
  VERSION = 2
end
