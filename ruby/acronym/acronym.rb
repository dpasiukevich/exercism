class Acronym

  def self.abbreviate(text)
    text.gsub(/([a-z])([A-Z])/, '\1 \2')
        .split(/[ -]/)
        .map { |w| w[0].upcase }
        .join
  end

end

module BookKeeping
  VERSION = 2
end
