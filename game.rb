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

  def score
    puts "P1: #{@player_1.lives}/3 & P2: #{@player_2.lives}/3"
  end

   def turn
    @player_1.new_question
    @player_2.new_question
    if @player_1.lives > 0 && @player_2.lives > 0
      score
      puts '---------NEW-TURN---------'
      score
    else
      puts '---------GAME-OVER--------'
      puts 'Good bye!'
    end
  end
end