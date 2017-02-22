module BookKeeping
  VERSION = 1
end

class Grains
  def self.square(n)
    raise ArgumentError unless (1..64).include? n
    1 << (n - 1)
  end

  def self.total
    (1 << 64) - 1
  end
end
