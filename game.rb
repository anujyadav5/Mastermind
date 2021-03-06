require_relative "print.rb"

class Game
  include Print

  def initialize(codemaker, codebreaker)
    @code_maker = codemaker
    @code_breaker = codebreaker
    @turns = 12
    @guess = []
    @win = false
  end

  def get_code
    @code_maker.make_code
    @code = @code_maker.code
  end

  def gameplay
    until (@guess.eql?(@code) || @turns == 0) do
      @hint = []
      @code_breaker.guess_code
      @guess = @code_breaker.guess
      @partial_mathces = @guess + []
      @reduced_code = @code + []
      
      for i in (0..3) do
        if @guess[i] == @code[i]
          @hint.concat(['x'])
          @partial_mathces[i] = nil
          @reduced_code[i] = nil
        end
      end
      @partial_mathces.compact!
      @reduced_code.compact!
      for i in @reduced_code.intersection(@partial_mathces) do
        @hint.concat(['o'])
      end

      puts "Feedback: #{Print.display(@hint.sort.reverse)}"
      puts "Guess #{13 - @turns}: #{Print.display(@guess)}"
      @turns -= 1
    end 

    @win = true if @turns > 0
  end

  def game_over
    if @win
      puts "Game Over, #{@code_breaker.name} correctly guessed the code!"
    else
      puts "Game Over, #{@code_maker.name} set a strong code."
    end
  end
  
end
