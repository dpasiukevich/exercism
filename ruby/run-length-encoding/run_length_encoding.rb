class RunLengthEncoding
  def self.encode(s)
    s.chars.chunk { |c| c }.inject('') { |r,b| r << "#{b[1].size if b[1].size > 1}#{b[0]}" }
  end

  def self.decode(s)
    s.scan(/\d*./).inject('') { |r,b| r << b[-1] * (b.chop == '' ? 1 : b.chop.to_i) }
  end
end

module BookKeeping
  VERSION = 2
end
