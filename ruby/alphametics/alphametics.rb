module BookKeeping
  VERSION = 4
end

class Alphametics

  def self.solve(input)
    input = input.upcase
    uniq_chars = input.scan(/[[:alpha:]]/).uniq

    raise 'Too much characters (more than 10 is not allowed)' if uniq_chars.size > 10

    result = {}

    ('0'..'9').to_a.permutation(uniq_chars.size).each do |p|
      mapping = Hash[uniq_chars.zip(p)]
      if check_mapping(mapping, input)
        result = mapping
        break
      end
    end
  
    result.each { |k,v| result[k] = v.to_i }
  end

  private

  def self.check_mapping(mapping, expression)

    substituted = expression.each_char.reduce('') { |res,c| res << (mapping[c] || c) }

    valid = false
    if substituted.split.select { |w| w.size > 1 && w[0] == '0'}.size == 0
      valid = true
    end
  
    eval(substituted) if valid && !substituted.tainted?
  end

end

