
class Question
  attr_reader :num1, :num2

  def initialize

  end
  def self.question_maker(num1, num2)

    puts "#{@current_player} What is the sum of #{num1} + #{num2} ?"
    print "> "
  end

end

# q = Question.new
# q.question_maker