class Trinary
  def initialize(input)
    if input =~ /[^012]/
      @n = '0'
    else
      @n = input
    end
  end

  def to_decimal
    @n.reverse.each_char.with_index.reduce(0) do |res,(c,i)|
      res += 3**i * c.to_i
    end
  end
end

module BookKeeping
  VERSION = 1
end
