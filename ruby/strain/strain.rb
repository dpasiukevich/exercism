module Enumerable
  def keep
    return enum_for(:keep) unless block_given?

    each.inject([]) { |res, el| (yield el) ? res << el : res }
  end

  def discard
    return enum_for(:discard) unless block_given?

    each.inject([]) { |res, el| (yield el) ? res : res << el }
  end
end
