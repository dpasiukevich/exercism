class Anagram

  def initialize(word)
    @word = word.downcase
    @chars = @word.chars.sort
  end

  def match(list)
    list.select { |w| w = w.downcase; w.chars.sort == @chars && w != @word }
  end

end

module BookKeeping
  VERSION = 2
end
