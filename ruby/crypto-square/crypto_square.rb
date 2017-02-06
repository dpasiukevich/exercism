class Crypto

  attr_reader :size

  def initialize(string)
    @string = string
    @string = normalize_plaintext

    @size = Math.sqrt(@string.size).ceil
  end

  def normalize_plaintext
    @string.downcase.gsub(/[^a-z0-9]/, '')
  end

  def plaintext_segments
    @string.scan(/.{1,#{@size}}/)
  end

  def normalize_ciphertext
    result = []

    plaintext_segments.each do |s|
      s.each_char.with_index do |c,i|
        result[i] ||= ''
        result[i] << c
      end
    end

    result.join(' ')
  end

  def ciphertext
    normalize_ciphertext.gsub(/\s+/, '')
  end
end
