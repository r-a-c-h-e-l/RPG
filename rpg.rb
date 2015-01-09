health_count = 10
baddie_health = 10

puts "Hey, Beastmaster. What do they call you?"
name = gets.chomp
puts "So glad you're here, #{name}. Our village has been plagued by a series of terrible beasts, and we desperately need you to gain mastery over the hordes. Will you fight this snake? Y/N?"
answer = gets.chomp.upcase


def fight_or_flight?
