class Player
  attr_accessor :lives, :name
  def initialize
    @lives = 3
    random_name = ['Gabe', 'Morgan', 'Matt', 'Sadie', "Wendy"].sample
    @name = random_name
  end

end