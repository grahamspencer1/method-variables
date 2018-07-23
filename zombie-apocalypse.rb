class Zombie

  @@horde = []
  @@plague_level = 10
  @@max_speed = 5
  @@max_strength = 8
  @@default_speed = 1
  @@default_strength = 3

  def initialize(number)

  end

  def encounter
    if outrun_zombie? = true && survive_attack? = true
      puts "You survived!"
    elsif outrun_zombie? = false && survive_attack? = true
      puts "You became a zombie!"
    else
      puts "You died!"
    end
  end

  def outrun_zombie?
    @@max_speed rand(5)

  end

  def survive_attack?
    @@max_strength rand(8)
  end

  def self.all
    return @@horde
  end

  def self.new_day
    some_die_off
    spawn
    increase_plague_level
  end

  def self.some_die_off

  end

  def self.spawn
    @@plague_level = rand(10)

    @@max_speed = rand(5)
    @@max_strength = rand(8)
  end

  def self.increase_plague_level
    infest = rand(2)
    return @@plague_level += infest
  end


end

##################################################################

puts Zombie.all.inspect # []
Zombie.new_day
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5ebd0 @speed=4, @strength=0>, #<Zombie:0x005626ecc5eba8 @speed=0, @strength=4>, #<Zombie:0x005626ecc5eb80 @speed=4, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You are now a zombie
puts zombie2.encounter # You died
puts zombie3.encounter # You died
Zombie.new_day
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5e1f8 @speed=0, @strength=0>, #<Zombie:0x005626ecc5e180 @speed=3, @strength=3>, #<Zombie:0x005626ecc5e158 @speed=1, @strength=2>, #<Zombie:0x005626ecc5e090 @speed=0, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You got away
puts zombie2.encounter # You are now a zombie
puts zombie3.encounter # You died
