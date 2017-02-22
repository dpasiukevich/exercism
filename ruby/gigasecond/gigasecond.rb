module BookKeeping
  VERSION = 5
end

class Gigasecond
  def self.from(since)
    since + 1000000000
  end
end
