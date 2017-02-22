module BookKeeping
  VERSION = 2
end

class Robot

  attr_reader :name

  @@taken_names = {}
  @@LETTERS = ('A'..'Z').to_a
  @@DIGITS = ('0'..'9').to_a

  def initialize
    reset
  end

  def reset
    loop do
      @name = (@@LETTERS.sample(2) + @@DIGITS.sample(3)).join

      if @@taken_names.has_key? @name
        if @@taken_names.size == 676_000
          raise "All unique names have been used. Can't generate new ones"
        end
      else
        @@taken_names[@name] = true
        break
      end
    end
  end
end
