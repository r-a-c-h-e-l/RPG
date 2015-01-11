p "give me your name"
name = gets.chomp

hero_object = {name: name,
  hero_health: 10,
  hero_strength: 5,
  hero_defense: 5}

p hero_object[:name]
p hero_object[:hero_health]
p hero_object[:hero_strength]
p hero_object[:hero_defense]
