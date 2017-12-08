class Pangram
  def self.pangram?(phrase)
    phrase.downcase.chars.sort.uniq.select{|a| a =~ /[a-z]/} == [*'a'..'z']
  end
end

module BookKeeping
  VERSION = 6
end
