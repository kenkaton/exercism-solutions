class Raindrops
  RAIN_SOUNDS = {3 => "Pling", 5 => "Plang", 7 => "Plong"}

  def self.convert(num)
    raindrop_speak = RAIN_SOUNDS.each_with_object("") {|(key_num, rain_sound), sound| sound << rain_sound if num % key_num == 0}
    raindrop_speak.empty? ? num.to_s : raindrop_speak
  end
end

module BookKeeping
  VERSION = 3
end
