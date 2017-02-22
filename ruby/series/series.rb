class Series
  def initialize(string)
    @series = string
  end

  def slices(n)
    raise ArgumentError if n > @series.size

    (0..@series.size-n).each.inject([]) do |res, i|
      res << @series[i...i+n]
    end
  end
end
