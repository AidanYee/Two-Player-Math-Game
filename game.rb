class Game
  attr_accessor :name, :player_1, :player_2
  def initialize(name)
    @name = name
    @player_1 = Player.new('Obi wan')
    @player_2 = Player.new('Anakin')
  end


  def start
    puts "Welcome #{@player_1.name} and #{@player_2.name} to the addition arena"
    turn
  end

  def score
    puts "LIVES REMAINING ~ P1: #{@player_1.lives}/3 --- P2: #{@player_2.lives}/3"
  end

  def winner(player)
    puts "#{player.name} wins with #{player.lives}/3 lives remaining"
    puts '..........GAME OVER..........'
    puts '.....THANKS FOR PLAYING......'
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
    check_score
    @player_1.new_question
    check_score
    @player_2.new_question
    score
    if @player_1.lives > 0 && @player_2.lives > 0
      puts 'Next Question!'
      turn
    end
   end
end