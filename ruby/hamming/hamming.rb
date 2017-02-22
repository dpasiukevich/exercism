module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(seq1, seq2)
    raise ArgumentError if seq1.size != seq2.size

    seq1.each_char
        .with_index
        .inject(0) { |res,(char,i)| (char != seq2[i]) ? res += 1 : res }
  end
end
