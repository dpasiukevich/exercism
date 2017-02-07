class Clock

  def self.at(h,m)
    Clock.new(h,m)
  end

  attr_reader :h, :m

  def initialize(h,m)
    @h = 0
    @m = 0
    set_time(h,m)
  end

  def to_s
    "#{0 if @h < 10}#{@h}:#{0 if @m < 10}#{@m}"
  end

  def +(m)
    set_time(@h,@m+m)
  end

  def ==(other)
    @h == other.h && @m == other.m
  end

  private

  def set_time(h,m)
    @h = h
    @m = m
    @h += m/60
    @m %= 60
    @h %= 24
    self
  end
end

module BookKeeping
  VERSION = 2
end
