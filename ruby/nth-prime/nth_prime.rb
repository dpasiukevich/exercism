module BookKeeping
  VERSION = 1
end

class Prime

  @@primes = []

  def self.nth(n)
    raise ArgumentError unless n > 0

    return @@primes[n-1] if @@primes[n-1]

    cur = @@primes.last
    cur ||= 1

    while @@primes.size <= n do
      cur += 1
      is_prime = true

      sqr = Math.sqrt(cur).floor

      @@primes.each do |prime|
        if cur % prime == 0
         is_prime = false
         break
        end
        break if prime > sqr
      end

      @@primes << cur if is_prime

    end

    @@primes[n-1]
  end
end

