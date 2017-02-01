class Game

  def initialize
    @throws = []
    @frames = []
    @frame = []
  end

  def roll(knocked)
    raise BowlingError if @frames.size == 10 || !(0..10).include?(knocked)

    if @frames.size < 9
      if knocked == 10
        @frames << [knocked]
      else
        @frame << knocked

        if @frame.size == 2
          raise BowlingError if @frame[0] + @frame[1] > 10

          @frames << @frame
          @frame = []
        end
      end
    else
      # here fill last frame
      @frame << knocked

      if @frame.size == 2 && @frame[0] != 10
        raise BowlingError if @frame[0] + @frame[1] > 10

        unless @frame[0] + @frame[1] == 10
          @frames << @frame
        end
      end

      if @frame.size == 3
        if @frame[0] == 10
          raise BowlingError if (@frame[1] != 10) && (@frame[1] + @frame[2] > 10)
          @frames << @frame
        end

        if @frame[0] + @frame[1] == 10
          @frames << @frame
        end
      end
    end
  end

  def score
    raise BowlingError unless @frames.size == 10

    @throws = @frames.flatten

    result = 0
    i = 0

    @frames.size.times do
      if @throws[i] == 10
        result += 10 + (@throws[i+1] + @throws[i+2])
        i += 1
      elsif (@throws[i] + @throws[i+1]) == 10
        result += 10 + @throws[i+2]
        i += 2
      else
        result += (@throws[i] + @throws[i+1])
        i += 2
      end
    end

    result
  end

  class BowlingError < StandardError
  end
end

module BookKeeping
  VERSION = 3
end
