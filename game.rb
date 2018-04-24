class Game
  attr_reader :num_of_players

  def initialize(num_of_players)
  @num_of_players = (1..num_of_players).map { Player.new }
  end

end

jawsome = Game.new(2)
p jawsome.num_of_players