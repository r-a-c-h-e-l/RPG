health_count = 10
baddie_health = 10

puts "Hey, warrior. What do they call you?"
name = gets.chomp
puts "So glad you're here, #{name}. Our village has been plagued by a series of terrible evils, and we desperately need you to battle them. Will you fight this snake? Y/N?"
answer = gets.chomp.upcase
if answer == "N"
  health_count -= 2
  puts "You ran away. Your health count has dropped from 10 to #{health_count}."
elsif answer == "Y"
  puts "BATTLE ROUND!"
  puts "You make the first move."
  damage_baddie = rand(1..100)
  if damage_baddie<=20
    puts "You missed!"


end
