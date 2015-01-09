beast1 = {"name"=>"tiger"}
beast_array = [beast1];


# health counts
hero_health = 10
baddie_health = 10

# who's alive?
hero_alive = true
baddie_alive = true

# intro
puts "Hey, Beastmaster. What do they call you?"
name = gets.chomp.upcase
puts "So glad you're here, #{name}. Our village has been plagued by a series of terrible beasts, and we desperately need you to gain mastery over the hordes. Will you fight this snake? Y/N?"
answer = gets.chomp.upcase

def flight(health)
  puts "20"
  health-=2
  puts "You ran away. Your health count has dropped from 10 to #{health}. You are a horrendous coward and no true beastmaster. We spit on your name and curse your descendents."
  if hero_health == 0
    hero_alive = false
    puts "The villagers have murdered you for your cowardice. Tales of your shame reach your home and loved ones. You are unmourned."
  end


def fight(health)
  puts "29"
  hero_turn = true
  while alive == true && b_alive==true
    puts "32"
    #run hero hit
    if hero_turn
      damage_chance = rand(1..100) #this is the 20% chance the hero hits
      damage_baddie = rand(2..4)
      damage_hero = rand(1..3)
      if damage_chance <= 20
        puts "You missed!"
        hero_turn = false
      elsif damage_chance > 20
        baddie_health-=damage_baddie
        puts "You got a hit! The beast's health has dropped to #{baddie_health}."
        if baddie_health <= 0
          b_alive == false
        else
          hero_turn = false
        end
      end
    elsif hero_turn == false
      # bad_turn
      if damage_chance <= 40
        puts "Lucky you; he missed. Strike!"
        hero_turn = true
      elsif damage_chance > 40
        hero_health-=damage_hero
        puts "You've been wounded! Your health has dropped to #{hero_health}. Strike again to save yourself."
        if hero_health <= 0
          alive==false
        else
          hero_turn = true
        end
      end
    end #ends battle loop
  end #ends while loop
  if alive == false
    puts "You are so dead."
  else
    puts "you have lived to fight another day"
      # generate random number that selects a baddy from array and return baddy#{key:name}
      # puts "a new beast has emerged! #{key:name} wants to eat you alive, will you fight? Y/N?"
      # query = gets.chomp.upcase
      # #run fight or flight?
  end
end
end

def fight_or_flight?(answer, health)
  if answer == "N"
    puts "22"
    flight(health)
  elsif answer == "Y"
    puts "BATTLE ROUND!"
    puts "You make the first move."
    fight(health)
  end
end

fight_or_flight?(answer,hero_health)
# action begins

# defs
