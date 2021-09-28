module BaseBall
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

baseball = BaseBall::Second.new('Alice', 13)
puts baseball

clock = Clock::Second.new(13)
puts clock