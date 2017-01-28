class PhoneNumber

  attr_reader :number

  def initialize(input)
    @number = '0'*10

    unless input =~ /[[:alpha:]]/
      input = input.gsub(/[^0-9]/, '')

      size = input.size

      if size == 10
        @number = input
      elsif size == 11 && input[0] == '1'
        @number = input
        @number[0] = ''
      end
    end
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(#{area_code}) #{number[3..5]}-#{number[6..9]}"
  end
end
