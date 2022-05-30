class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def take_life
    @lives -= 1
  end

  def is_dead
    @lives == 0
  end

  def new_question
    new_question = Questions.new
    puts "#{name}: What does #{new_question.num1} plus #{new_question.num2} equal?"
    print '> '
    @userchoice = $stdin.gets.chomp
    if new_question.check_answer?(@userchoice.to_i)
      puts 'CORRECT! You are a math wizard.'
    else
      puts 'WRONG!!!! Time to break out the calculator!'
      take_life
    end
  end
end