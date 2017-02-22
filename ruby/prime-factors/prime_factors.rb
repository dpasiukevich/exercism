class PrimeFactors
  def self.for(n)
    result = []

    while (n % 2 == 0)
      result << 2
      n /= 2
    end

    (3..Math.sqrt(n)).step(2).each do |i|
      while n % i == 0
        result << i
        n /= i
      end
    end

    result << n unless n == 1
    result
  end
end
