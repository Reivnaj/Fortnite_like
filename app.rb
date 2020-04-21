require 'pry'
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Josiane")
player2 = Player.new("José")

puts "A ma droite #{player1.name}"
puts "A ma gauche #{player2.name}"


while player1.life_points>0 || player2.life_points>0
  puts "=============================="
  puts "Voici l'état de nos joueurs :"
  player1.show_state
  player2.show_state
  puts "=============================="
  puts "Passons à la phase d'attaque :"
  puts "==!==!==!==!==!==!==!==!==!==!==!==!==!==!=="
  player1.attacks(player2)
  if player2.life_points <= 0
    break
  end
  player2.show_state
  player2.attacks(player1)
  if player1.life_points <= 0
    break
  end
  player1.show_state

end



binding.pry
puts "end of game"
