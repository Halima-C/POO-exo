require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts "Bienvenue sur 'ILS VEULENT TOUS MA POO' !      |
|Le but du jeu est d'être le dernier survivant !"

puts "Pret à mourir, gamin ? File moi ton nom"
human_name = gets.chomp.to_s
human = HumanPlayer.new(human_name)

enemies = Array.new

player1 = Player.new("Josiane")
player2 = Player.new("José")

enemies << player1 && player2

puts " Les zombies #{player2.name} et #{player1.name} sont prets à te démolir." 

#while human.life_points > 0 && (player1.life_points > 0 || player2.life_points > 0)
#end

binding.pry
