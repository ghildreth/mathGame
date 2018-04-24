class Game
  def initialize(num_of_players)
  # attr_reader: :player, :question, :score
  @players = (1..num_of_players).map {Player.new}


end




jawsome = Game.new(2)




class Player
  attr_reader :lives, :name
  def initialize(name)
    @lives = 3
    @name = name
  end
end

Rinzler = Player.new('Rinzeler')