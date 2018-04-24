# require_relative 'question'
class Game
  attr_reader :num_of_players

  def initialize(num_of_players)

    random_name1 = ['Gabe', 'Matt', 'Sadie', "Wendy"].sample
    random_name2 = ['Andy', 'Morgan', 'Dominic', 'Natalie'].sample

    @player1 = Player.new(random_name1)
    @player2 = Player.new(random_name2)
    @current_player = @player1
    start_game
  end

  def new_turn
    @current_player = @current_player == @player1 ? @player2 : @player1
    # if(@current_player == @player1)
    #   @current_player = @player2
    # else
    #   @current_player = @player1
    # end
    puts "<=_.-*'.-*'.-*' NEW TURN '*-.'*-.'*-._=> \n "
  end

  def play_game
    question = Question.new
    question.question_maker(@current_player.name)
    user_answer = $stdin.gets.chomp

    if question.verify_answer(user_answer)
      puts "Good job (^_^), #{@current_player.name}! Your wits saved one of your precious lives... \n "
    else
      puts "Wrong (>.<), #{@current_player.name} you suck and lost a life. \n "
      @current_player.lose_life
      puts "[#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3] \n "
    end
    new_turn
  end

  def start_game
    while @player1.is_alive and @player2.is_alive
      play_game
    end
    puts "GAME OVER, #{@current_player.name} wins!"
  end
end
