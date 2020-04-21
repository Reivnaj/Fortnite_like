class Player
  attr_accessor :name, :life_points

  def initialize(name, life_points=10)
    @name = name
    @life_points = life_points
  end

  def show_state

      if  @life_points>0 && @life_points<5
        puts "#{@name} est mal-en-point, il ne lui reste que #{@life_points} points de vie!"
      else
        puts "#{@name} a #{@life_points} points de vie"
      end

  end

  def gets_damage(damage_value)
    @life_points -= damage_value
    if @life_points <= 0
      puts "#{@name} est décédé(e) des suites de la fracture du crâne que vous lui avez affligé"
    end
  end

  def attacks(player_attacked)
    puts "#{@name} attaque #{player_attacked.name} !"
    damage = comptute_damage
    player_attacked.life_points -= damage
    puts "==!==!==!==!==!==!==!==!==!==!=="
    puts "#{player_attacked.name} reçoit #{damage} points de dégat"
  end

  def comptute_damage
    return rand(1..6)
  end
end

# class HumanPlayer < Player
#   attr_accessor :weapon_level
#
#   def initialize(name, weapon_level, life_points=100)
#     weapon_level=1
#     @weapon_level = weapon_level
#     super(name, life_points=10)
#   end
# end
