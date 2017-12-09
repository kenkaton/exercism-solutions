class Raindrops
  RAIN_SOUNDS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(num)
    raindrop_speak = RAIN_SOUNDS.select{|key_num, v| num % key_num == 0}.values.join
    raindrop_speak.empty? ? num.to_s : raindrop_speak
  end
end

module BookKeeping
  VERSION = 3
end
