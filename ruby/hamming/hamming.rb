module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(seq1, seq2)
    raise ArgumentError if seq1.size != seq2.size
    distance = 0
    (0...seq1.size).each { |i| distance += 1 if seq1[i] != seq2[i] }
  end
end
