module BookKeeping
  VERSION = 2
end

class Integer
  @@roman = ['I', 'V', 'X', 'L', 'C', 'D', 'M']

  def to_roman
    result = ''

    s = self.to_s
    i = 2*(s.size-1)

    s.each_char do |c|
      c = c.to_i

      if c <= 3
        result << @@roman[i]*c
      elsif c == 4
        result << (@@roman[i] + @@roman[i+1])
      elsif c == 5
        result << @@roman[i+1]
      elsif c <= 8
        result << (@@roman[i+1] + @@roman[i]*(c-5))
      else
        result << (@@roman[i] + @@roman[i+2])
      end
      i -= 2
    end
    result
  end
end

