require_relative 'player'
require_relative 'math_question'

class MathGame

  attr_reader :winner, :current_player
  
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @winner = nil
    @current_player = @player1
  end

  def play
    puts "Welcome #{@player1} and #{@player2}!"

    while winner == nil
      puts "----- NEW TURN ------"

      question = MathQuestion.new
      puts "#{current_player}:"+ question.get_prompt
      print ">"
      answer = gets.chomp

      if answer == question.answer
        puts "#{current_player}:Bingo! You got it!"
      else
        puts "#{current_player}:Yikes, wrong answer!"
        current_player.lose_life
      end

      if current_player.lives == 0
        @winner = (@current_player == @player1) ? @player2 : @player1
      end

      # Display current player stats
      puts "----- CURRENT SCORES ------"
      puts "#{@player1}: #{@player1.score}  #{@player2}: #{@player2.score}"

       # Switch current_player to the next player
       @current_player = (@current_player == @player1) ? @player2 : @player1

    end

    announce_winner
  end

  def announce_winner
    puts "#{@winner} wins with a score of #{@winner.score}"
  end

  private

  def winner= value
    @winner = value
  end

  def current_player= value
    @current_player = value
  end
end