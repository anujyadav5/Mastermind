class Computer
  attr_reader :code, :guess, :name

  def initialize
    @name = "the computer"  
  end

  def make_code
    @code = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
  end

  def guess_code
    @guess = [rand(1..6), rand(1..6), rand(1..6), rand(1..6)]
  end
  
end