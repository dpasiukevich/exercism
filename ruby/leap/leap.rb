module BookKeeping
  VERSION = 2
end

class Year
  def self.leap?(n)
    (n % 4 == 0) && (n % 100 != 0) || (n % 400 == 0)
  end
end
