require 'set'

class SumOfMultiples
  def initialize(*input)
    @numbers = input
  end

  def to(limit)
    multiples = Set.new [0]
    @numbers.each do |n|
      m = n
      while m < limit
        multiples << m
        m += n
      end
    end
    multiples.reduce(&:+)
  end
end
