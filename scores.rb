class Scores
  attr_reader :score

  def initialize
    @score = 0
  end

  def add_points(points)
    @score += points
  end
end
