health_count = 10
baddie_health = 10

puts "Hey, Beastmaster. What do they call you?"
name = gets.chomp
puts "So glad you're here, #{name}. Our village has been plagued by a series of terrible beasts, and we desperately need you to gain mastery over the hordes. Will you fight this snake? Y/N?"
answer = gets.chomp.upcase
if answer == "N"
  health_count-=2
  puts "You ran away. Your health count has dropped from 10 to #{health_count}."
elsif answer == "Y"
  puts "BATTLE ROUND!"
  puts "You make the first move."
  damage_chance = rand(1..100) #this is the 20% chance the hero hits
  damage_baddie = rand(2..4)
    if damage_chance<=20
      puts "You missed!"
    elsif damage_chance>20
      baddie_health-=damage_baddie
      puts "You got a hit! The snake's health has dropped from 10 to #{baddie_health}."
    end
end
