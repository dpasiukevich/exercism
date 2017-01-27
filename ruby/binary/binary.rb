class Binary
  def self.to_decimal(binary)
    raise ArgumentError if binary[/[^01]/]
    binary.reverse.each_char.with_index.inject(0) {|sum,(c,i)| sum += 2**i * c.to_i}
  end
end

module BookKeeping
  VERSION = 3
end
