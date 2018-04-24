class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    random_name = ['Gabe', 'Morgan', 'Matt', 'Sadie', "Wendy"].sample
    @name1 = random_name
    @name2 = random_name
    @current_player = @name1
  end

# start play def
# then game over


  def new_turn
    if(@current_player == @name1)
      @current_player = @name2
    else
      @current_player = name1
    end
  end

def question_maker
  puts "#{@current_player} What is the sum of #{@num1} + #{@num2} ?"
  print "> "


  answer = $stdin.gets.chomp


  if answer == "#{@num1 + @num2}"
    puts "Good job! Your wits saved one of your precious lives..."

  else
    puts "Wrong, you suck and lost a life."
    # minus 1 life
  end
    new_turn
  end
end

game1 = Question.new
game1.question_maker


