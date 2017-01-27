class Bob

  def self.hey(remark)
    result = 'Whatever.'
    result = 'Fine. Be that way!' unless remark =~ /\w/
    result = 'Sure.' if remark[-1] == '?'
    result = 'Whoa, chill out!' if remark.scan(/[A-Z]/).count > remark.scan(/[a-z]/).count

    result
  end
end
