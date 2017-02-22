class Array
  def accumulate
    return enum_for(:accumulate) unless block_given?

    result = Array.new size

    result.each_index do |i|
      result[i] = yield self[i]
    end
  end
end

module BookKeeping
  VERSION = 1
end
