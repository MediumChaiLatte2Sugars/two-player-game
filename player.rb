class Player

  attr_reader :name, :lives, :score

  def initialize(name)
    @lives = 3
    @name = name
    @score = "#{@lives}/3"
  end

  def lose_life
    @lives -= 1
  end

  def to_s
    @name
  end
end