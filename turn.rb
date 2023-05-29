require_relative "math_question"

class Turn

  attr_reader :question

  def initialize
    @question = MathQuestion.new
  end

end