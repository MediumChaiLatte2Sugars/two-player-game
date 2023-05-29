class MathQuestion
  attr_reader :answer

  def initialize
    @first_number = rand(20) + 1
    @second_number = rand(20) + 1
    @operation = ["+", "-"].sample
    @answer = eval("#{@first_number} #{@operation} #{@second_number}").to_s
  end

  def get_prompt
    "What is #{@first_number} #{@operation} #{@second_number}?"
  end
end