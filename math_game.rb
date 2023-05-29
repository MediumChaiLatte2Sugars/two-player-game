require_relative 'player'

class MathGame

  attr_reader :winner
  
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @winner = nil
  end

  def play
    puts "Welcome #{@player1.name} and #{@player2.name}!"

    # announce_winner
  end

  def announce_winner
    puts "#{@winner} wins with a score of #{@winner.lives}/3"
  end

  private

  def winner= value
    @winner = value
  end
end