class Question
  def initialize
    @numbers = Numbers.new
  end

  def display_question
    "What is #{@numbers}?"
  end

  def correct?(answer)
    @numbers.sum == answer
  end
end
