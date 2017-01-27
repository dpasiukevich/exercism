module BookKeeping
  VERSION = 1
end

class Phrase

  def initialize(phrase)
    @words = phrase.downcase.scan(/[\w']+/)
    @counts = Hash.new(0)
  end

  def word_count
    @words.each do |word|
      word.gsub!(/(^'+)|('+$)/, '')
      @counts[word] += 1
    end
    @counts
  end
end
