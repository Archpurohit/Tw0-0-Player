class Numbers
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def sum
    @num1 + @num2
  end

  def to_s
    "#{@num1} + #{@num2}"
  end
end
