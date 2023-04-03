class Player
  attr_reader :name, :score, :lives

  def initialize(name)
    @name = name
    @score = 0
    @lives = 3
  end

  def add_points(points)
    @score += points
  end

  def lose_life
    @lives -= 1
  end
end
