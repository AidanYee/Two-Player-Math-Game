class Game
  attr_accessor :name, :player_1, :player_2
  def initialize(name)
    @name = name
    @player_1 = Player.new('Obi wan')
    @player_2 = Player.new('Anakin')
  end


  def start
    puts "New Game Started. Welcome #{@player_1.name} and #{@player_2.name}"
    turn
  end

  def score
    puts "P1: #{@player_1.lives}/3 --- P2: #{@player_2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
    exit(0)
  end

  def check_score
    if @player_1.lives == 0
      winner(player_2)
    elsif @player_2.lives == 0
      winner(player_1)
    end
  end

   def turn
    @player_1.new_question
    check_score
    @player_2.new_question
    check_score
    if @player_1.lives > 0 && @player_2.lives > 0
      score
      puts 'Next Question!'
      score
      turn
    else
      score
      puts "GG"
    end
   end
end