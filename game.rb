class Game

  def initialize(codemaker, codebreaker)
    @code_maker = codemaker
    @code_breaker = codebreaker
    @turns = 12
  end

  def get_code
    @code_maker.make_code
    @code = @code_maker.code
  end

  def gameplay_humanmode
    
  end

  def gameplay_computer_mode
    
  end

end
