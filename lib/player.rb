class Player
  attr_accessor :name, :life_points

 

  def initialize(name)
    @name = name.to_s
    @life_points = 10 
  end

  def show_state
  	puts "#{name} a #{life_points} points de vie"
  end

  def gets_damage(damage)
    @life_points = life_points-damage
  if @life_points > 0
  	puts "le joueur #{name} a #{life_points} points de vie"
  else @life_points <= 0
    puts "le joueur #{name} a été tué !"
  end
end

  def attacks(player)
      puts "le joueur #{self.name} attaque le joueur #{player.name}"
      damage = player.compute_damage
      puts "il lui inflige #{damage} points de dommage"
      puts "#{player.gets_damage(damage)}"

  end

  def compute_damage
    return rand(1..6)
  end
end

class HumanPlayer < Player

attr_accessor :weapon_level

  def initialize(name)
    @life_points = 100
    @weapon_level = 1 
    @name = name.to_s

def show_state
  puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}"
end

def compute_damage
  rand(1..6) * @weapon_level
end

def search_weapon
  new_weapon_level = rand(1..6)
  puts "Tu as trouvé une arme de niveau #{new_weapon_level}"
  if new_weapon_level > @weapon_level
    puts @weapon_level = new_weapon_level
    puts "Cette arme est top, conserve la"
  else
    puts "Cette arme craint, jette la"
  end
end

def search_health_pack
  health_pack = rand(1..6)
  if health_pack == 1
    puts "T'as pas de chance dis donc..."

  elsif health_pack == 2 || health_pack == 3 || health_pack == 4 || health_pack == 5
    if @life_points <= 100
      @life_points == 100
    else
      @life_points = @life_points + 50
    end
      puts "Bravo, tu as trouvé un pack de 50 PV"

  else
    if @life_points + 80 >= 100
      @life_points == 100
    else
      @life_points = @life_points + 80
    end
      puts "Quel venard, un pack de 80 PV ! "
    end
  end
end
end