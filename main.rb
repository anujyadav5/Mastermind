require_relative "colors.rb"
require_relative "player.rb"
require_relative "computer.rb"
require_relative "game.rb"

puts "#{" 1 ".red} #{" 2 ".blue} #{" 3 ".yellow} #{" 4 ".light_blue} #{" 5 ".pink} #{" 6 ".brown}"

puts "#{" o ".light_green} #{" x ".green} #{" x ".green}"


new_game = Game.new(Computer.new(), Player.new())

new_game.get_code
new_game.gameplay
new_game.game_over
