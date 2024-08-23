class Question
  attr_accessor :number1, :number2

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def correct_answer?(answer)
    answer == @number1 + @number2
  end
end