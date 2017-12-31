class Integer
  def to_roman
    roman = {
      M:  1000,
      CM: 900, D: 500, CD: 400, C: 100,
      XC: 90,  L: 50,  XL: 40,  X: 10,
      IX: 9,   V: 5,   IV: 4,   I: 1,
    }
    num = self
    roman.map do |letter, val|
      q, num = num.divmod(val)
      letter.to_s * q
    end.join
  end
end

module BookKeeping
  VERSION = 2
end
