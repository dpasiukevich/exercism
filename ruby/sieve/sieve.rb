module BookKeeping
  VERSION = 1
end

class Sieve
  def initialize(n)
    @primes = []
    @sieve = {}

    2.upto(n) do |x|
      @primes << x unless @sieve.include? x

      multipes = x*2

      while multipes <= n
        @sieve[multipes] = nil
        multipes += x
      end
    end
  end

  def primes
    @primes
  end
end



