module BookKeeping
  VERSION = 3
end

class Raindrops
  @@rain_speak = {3 => 'Pling', 5 => 'Plang', 7 => 'Plong'}

  def self.convert(n)
    res = ''
    @@rain_speak.each { |k,v| res << v if n % k == 0 }

    res == '' ? n.to_s : res
  end
end
