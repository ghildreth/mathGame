class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

def question_maker
  puts "What is the sum of #{@num1} + #{@num2} ?"
  print "> "
  answer = $stdin.gets.chomp

  if answer == "#{@num1 + @num2}"
    puts "Good job! Your wits saved one of your precious lives..."

  else
    puts "Wrong, you suck and lost a life."
  end

end
end

game1 = Question.new
game1.question_maker

# puts "Welcome to my wonderful Math game! Press 1 to enter!"

# print "> "
# enter = $stdin.gets.chomp
# # if enter =="1"
# range = (1..20).to_a


# def random_number(array)
#   return array.sample
# end

# num1 = random_number(range)
# num2 = random_number(range)

#   puts "What is the sum of #{num1} + #{num2} ?"
#   print "> "
#   answer = $stdin.gets.chomp

# if answer == "#{num1} + #{num2}"
#   puts "Good job!"

# else
#   puts "WROOOOOOOOOOOOONG!"
# end

