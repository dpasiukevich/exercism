module BookKeeping
  VERSION = 3
end

class Squares

  def initialize(n)
    @n = n
    @square_of_sum = (n*(n+1)/2.0) ** 2
    @sum_of_squares = (n**3)/3.0 + (n**2)/2.0 + n/6.0
  end

  def square_of_sum
    @square_of_sum
  end

  def sum_of_squares
    @sum_of_squares
  end

  def difference
    @square_of_sum - @sum_of_squares
  end
end


