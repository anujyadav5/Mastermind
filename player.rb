class Player
  attr_reader :code, :name, :guess
  
  def initialize
    puts "Enter your code name: "
    @name = gets.chomp
  end

  def make_code
    puts "Enter your 4 digit secret code (numbers must be between 1 and 6, ex. 1124, 5561): "
    @code = gets.chomp
    
    until @code =~ /[1-6]{4}/ do
      puts @code
      puts "Your code must be 4digits between 1 and 6 (ex. 1234, 6225)"
      @code = gets.chomp
    end
    @code = @code.to_s.split('').map(&:to_i)
  end

  def guess_code
    puts "Enter a guess (4digits between 1 and 6): "
    @guess = gets.chomp

    until @guess =~ /\b[1-6]{4}\b/ do
      puts "Guess must be 4digits between 1 and 6 (ex. 1234, 6225)"
      @guess = gets.chomp
    end
    @guess = @guess.to_s.split('').map(&:to_i)
  end

end
