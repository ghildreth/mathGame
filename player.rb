class Player
  attr_accessor :lives, :name
  def initialize(name)
    @lives = 3
    @name = name
    # random_name = ['Gabe', 'Morgan', 'Matt', 'Sadie', "Wendy"].sample
    # @name = random_name
  end

  def is_alive
    @lives > 0
  end

  def lose_life
    @lives -= 1
  end

end