class Complement
  def self.of_dna(dna)
    dna =~ /[^CGTA]/ ? '' : dna.tr('CGTA','GCAU')
  end
end

module BookKeeping
  VERSION = 4
end
