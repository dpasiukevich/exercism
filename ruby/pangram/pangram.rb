module BookKeeping
  VERSION = 3
end

class Pangram
  def self.pangram?(phrase)
    phrase.downcase!
    ('a'..'z').all? { |c| phrase.include? c }
  end
end
