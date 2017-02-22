module BookKeeping
  VERSION = 4
end

class Complement

  COMPLEMENTS = {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U'}

  def self.of_dna(dna)
    dna.chars.inject('') { |rna, c| rna << (COMPLEMENTS[c] || (return '')) }
  end
end
