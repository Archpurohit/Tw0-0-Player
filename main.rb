require_relative 'player'
require_relative 'math_game'
require_relative 'turn'
require_relative 'question'
require_relative 'numbers'
require_relative 'lives'
require_relative 'scores'

# game setup
player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
math_game = MathGame.new(player1, player2)

# game loop
until math_game.game_over?
  current_turn = Turn.new(math_game.current_player)
  puts "#{current_turn.player.name}, it's your turn!"
  question = Question.new
  puts question.display_question
  answer = gets.chomp.to_i
  if question.correct?(answer)
    puts "You are correct!"
    current_turn.player.add_points(1)
  else
    puts "Sorry, that's incorrect!"
    current_turn.player.lose_life
  end
  math_game.next_turn
  puts "Scores: #{player1.score} - #{player2.score}"
end

puts "#{math_game.winner.name} wins with a score of #{math_game.winner.score}!"
puts "