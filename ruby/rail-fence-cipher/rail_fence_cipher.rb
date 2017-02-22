class RailFenceCipher
  VERSION = 1

  def self.encode(text, rails)

    if rails == 1
      initial_step = 1
    else
      initial_step = 2*(rails-1)
    end

    result = ''

    rails.times do |rail|
      i = rail
      if rail == 0 || rail == rails-1
        while text[i]
          result << text[i]
          i += initial_step
        end
      else
        add = initial_step - 2*rail
        while text[i]
          result << text[i]
          i += add
          add = initial_step - add
        end
      end
    end

    result
  end

  def self.decode(encrypted, rails)
    if rails == 1
      initial_step = 1
    else
      initial_step = 2*(rails-1)
    end

    result = 'x'*encrypted.size
    
    rail = 0
    i = 0
    add = -1
    
    encrypted.each_char do |c|
      result[i] = c
      
      if rail == 0 || rail == rails-1
        if encrypted[i+initial_step]
          i += initial_step
        else
          rail += 1
          i = rail
        end
      else
        if add == -1
          add = initial_step - 2*rail
        else
          add = initial_step - add
        end

        if encrypted[i+add]
          i += add
        else
          rail += 1
          i = rail
        end
      end
    end

    result
    
  end
end
