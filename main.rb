require_relative "colors.rb"
require_relative "player.rb"
require_relative "computer.rb"
require_relative "game.rb"


puts <<-RULES
Welcome to Mastermind, let's put to test how good of a spy you would be. Here are the rules to the game:

There are two players, code_make and code_breaker. 
The game begins by the code_maker setting a 4 digit code from the numbers: 
#{Print.display([1, 2, 3, 4, 5, 6])}

The code_breaker gets 12 turns(guesses) to crack this code. After every guess, the code_breaker gets feedback in the form of #{Print.display(['o'])}s and #{Print.display(['x'])}s. For every exact match, an #{Print.display(['x'])} is shown and for every match that's not in the correct position, a #{Print.display(['o'])} is shown --> Feedback is displayed in no order.

For example, if the code_maker sets the code to #{Print.display([1, 1, 6, 6])} and the code_breaker guesses #{Print.display([1, 2, 1, 1])} then the feedback would be: #{Print.display(['x', 'o'])} 

Now it's your turn to decide what you want to be. 
RULES

play_again = true

while play_again do
  puts "Enter '1' for code_breaker or '2' for code_maker:"
  player_type = gets.chomp

  until player_type == '1' || player_type == '2' do
    puts "Please enter either '1' for code_breaker or '2' for code_maker:"
    player_type = gets.chomp
  end

  if player_type == '1'
    new_game = Game.new(Computer.new(), Player.new())
  elsif player_type == '2'
    new_game = Game.new(Player.new(), Computer.new())
  end

  new_game.get_code
  new_game.gameplay
  new_game.game_over

  puts "Do you want to play again? Enter 'Y' to play again or any other key to end the game."
  replay = gets.chomp
  play_again = false unless replay == 'Y'
  
end
