class Turn

  attr_reader :current_player, :question

  def initialize(current_player)
    @current_player = current_player
    @question = { prompt: "Placeholder question", answer: "placeholder answer"}
  end

end