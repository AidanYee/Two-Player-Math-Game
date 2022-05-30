class Game
  attr_accessor :name, :player_1, :player_2
  def initialize(name)
    @name = name
    @player_1 = Player.new('Obi wan')
    @player_2 = Player.new('Anakin')
  end


  def start
    puts "New Game Started. Welcome #{@player_1.name} and #{@player_2.name}"
    pp @player_1
    pp @player_2
  end

end