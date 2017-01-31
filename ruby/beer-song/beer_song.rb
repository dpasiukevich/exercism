class BeerSong

  def initialize
    @initial = 99
  end

  def verse(n)
    s = "#{bottles(n).capitalize} of beer on the wall, #{bottles(n)} of beer.\n"
    if n == 0
      s << "Go to the store and buy some more, #{@initial} bottles of beer on the wall.\n"
    else
      s << "Take #{(n == 1) ? 'it' : 'one'} down and pass it around, #{bottles(n-1)} of beer on the wall.\n"
    end
    s
  end

  def verses(a,b)
    a.downto(b).with_object('') do |n,res|
      res << "#{verse(n)}\n"
    end.chop
  end

  def lyrics
    verses(99,0)
  end

  private

  def bottles(n)
    case n
    when 0
      'no more bottles'
    when 1
      '1 bottle'
    else
      "#{n} bottles"
    end
  end
end

module BookKeeping
  VERSION = 2
end
