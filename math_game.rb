require_relative 'player'
require_relative 'turn'

class MathGame

  attr_reader :winner
  
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @winner = nil
  end

  def play
    puts "Welcome #{@player1} and #{@player2}!"

    while winner == nil
      turn = Turn.new(@player1)
      puts turn.question[:prompt] + "?"
      answer = gets.chomp

      if answer == turn.question[:answer]
        @winner = turn.current_player
      end

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
end