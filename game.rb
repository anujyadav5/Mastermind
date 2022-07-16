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
      @partial_mathces = @guess
      puts @guess
      puts @code
      
      for i in (0..3) do
        if @guess[i] == @code[i]
          @hint.concat(['x'])
        end
      end
      @partial_mathces.each do |num|
        @hint.concat(['o']) if @code.include?(num)
      end

      puts "Feedback: #{Print.display(@hint.sort.reverse)}"
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
