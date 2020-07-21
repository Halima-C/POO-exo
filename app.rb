require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "Le joueur #{player2.name} saura-t-il faire la différence? 
Le combattant #{player1.name} restera-t-il invaincu après 15 victoires consécutives?" 

puts "Que le match commence !" 

while player1.life_points > 0 && player2.life_points > 0
	puts "Voici l'état des joueurs" 
	player1.show_state
	player2.show_state

	puts "Passons à la phase d'attaque"
	player1.attacks(player2)

if player2.life_points <= 0 
		break
	else 
		puts "Voici l'état des joueurs"
		puts "Passons à la phase d'attaque"
		player2.attacks(player1)
	end
end

binding.pry