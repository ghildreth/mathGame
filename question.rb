
class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)

  end
  def question_maker(current_player)
    puts "#{current_player} What is the sum of #{@num1} + #{@num2} ?"
    print "> "
  end

  def verify_answer(user_answer)
    user_answer == "#{@num1 + @num2}"
  end
end

# q = Question.new
# q.question_maker