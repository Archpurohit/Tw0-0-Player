class Lives
  attr_reader :remaining_lives

  def initialize
    @remaining_lives = 3
  end

  def lose_life
    @remaining_lives -= 1
  end
end
