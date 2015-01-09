hero_health = 10
baddie_health = 10

puts "Hey, Beastmaster. What do they call you?"
name = gets.chomp
puts "So glad you're here, #{name}. Our village has been plagued by a series of terrible beasts, and we desperately need you to gain mastery over the hordes. Will you fight this snake? Y/N?"
answer = gets.chomp.upcase
if answer == "N"
  hero_health-=2
  puts "You ran away. Your health count has dropped from 10 to #{hero_health}."
elsif answer == "Y"
  puts "BATTLE ROUND!"
  puts "You make the first move."
  # Chance of landing an attack
  damage_chance = rand(1..100) #this is the 20% chance the hero hits
  # Random health points baddie loses.
  damage_baddie = rand(2..4)
  # Random heatlth points hero loses.
  damage_hero = rand(1..3)
  # If the attack misses nothing happens
  if damage_chance > 20
    puts "You missed!"
    # If the attack lands, the baddie loses 2-4 health points
  elsif damage_chance <= 20
    baddie_health-=damage_baddie
    puts "You got a hit! The snake's health has dropped from 10 to #{baddie_health}."
  end
  puts "Now the baddie will attack you, #{name}"
  #If the attack on the hero misses
  if damage_chance > 40
    puts "baddie missed you!"
    #If the attack on the hero lands, the hero loses 1-3 health points
  elsif damage_chance <= 40
    hero_health =- damage_hero
    puts "Oh no #{name}, baddie hit you and your health is now #{hero_health}!"
  end

end
