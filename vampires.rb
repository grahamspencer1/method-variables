class Vampire
  @@coven = []

  def initialize(name, age)
    @name = name
    @age = age
    @in_coffin = false
    @drank_blood_today = false
  end

  def drank_blood_today
    return @drank_blood_today
  end

  def drank_blood_today=(boolean)
    return @drank_blood_today = boolean
  end

  def in_coffin
    return @in_coffin
  end

  def in_coffin=(boolean)
    return @in_coffin = boolean
  end

  def drink_blood
    @drank_blood_today = true
  end

  def go_home
    @in_coffin = true
  end

  def self.create(name, age)
    new_vampire = self.new(name, age)
    @@coven.push(new_vampire)
    return new_vampire
  end

  def self.sunrise
    @@coven.each do |vampire|
      if vampire.drank_blood_today == false || vampire.in_coffin == false
        @@coven.delete(vampire)
      end
    end
  end

  def self.sunset
    @@coven.each do |vampire|
        vampire.drank_blood_today = false
        vampire.in_coffin = false
     end
  end

  def self.all
    return @@coven
  end
end

dracula = Vampire.create("Dracula", 99)
alucard = Vampire.create("Alucard", 88)
helsing = Vampire.create("Helsing", 33)

p Vampire.all

dracula.drink_blood
dracula.go_home
alucard.drink_blood
alucard.go_home
helsing.drink_blood

puts ""
p Vampire.all

Vampire.sunrise

puts ""
p Vampire.all

# Dracula and Alucard are successful, but Helsing doesn't make it home in time.

Vampire.sunset

dracula.drink_blood
dracula.go_home
alucard.drink_blood

puts ""
p Vampire.all

Vampire.sunrise

# Dracula lives, but Alucard's too slow.

puts ""
p Vampire.all

Vampire.sunset

dracula.go_home

puts ""
p Vampire.all

Vampire.sunrise

# Dracula couldn't find any blood to drink, so he dead (again).

puts ""
p Vampire.all
