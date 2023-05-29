require_relative 'player'
require_relative 'turn'

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

      turn = Turn.new
      puts "#{current_player}:"+ turn.question[:prompt] + "?"
      answer = gets.chomp

      if answer == turn.question[:answer]
        @winner = @current_player
      end

       # Switch current_player to the next player
       @current_player = (@current_player == @player1) ? @player2 : @player1

    end

    announce_winner
  end

  def announce_winner
    puts "#{@winner} wins with a score of #{@winner.lives}/3"
  end

  private

  def winner= value
    @winner = value
  end

  def current_player= value
    @current_player = value
  end
end