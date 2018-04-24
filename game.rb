require_relative 'question'
class Game
  attr_reader :num_of_players

  def initialize(num_of_players)
  # @num_of_players = (1..num_of_players).map { Player.new }

    # random_name = ['Gabe', 'Morgan', 'Matt', 'Sadie', "Wendy"].sample
    # @name1 = "Player1"
    # @name2 = "Player2"
    # @current_player = @name1
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
    start_game
  end

  def new_turn
    if(@current_player == @player1)
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def play_game
    num1 = rand(1..20)
    num2 = rand(1..20)

    Question.question_maker(num1, num2)
    answer = $stdin.gets.chomp

    if answer == "#{num1 + num2}"
      puts "Good job! Your wits saved one of your precious lives..."
    else
      puts "Wrong, you suck and lost a life."
      @current_player.lose_life
      p @current_player.lives
    end
    new_turn
  end
# start play def
# then game over
  def start_game
    while @player1.is_alive and @player2.is_alive
      play_game
    end
    puts 'Game over'
  end
end
