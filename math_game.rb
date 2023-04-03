class MathGame
  attr_reader :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
  end

  def next_turn
    @current_player = @players.rotate!.first
  end

  def game_over?
    @players.any? { |player| player.lives == 0 }
  end

  def winner
    @players.find { |player| player.lives > 0 }
  end
end
