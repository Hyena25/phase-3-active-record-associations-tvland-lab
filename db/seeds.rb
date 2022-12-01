puts "created seeds.rb"

Actor.destroy_all
Character.destroy_all
Network.destroy_all
Show.destroy_all

puts "destroyed"

puts "create network"

n1 = Network.create(call_letters: "WWE")
n2 = Network.create(call_letters: "FOX")
n3 = Network.create(call_letters: "Disney")
n4 = Network.create(call_letters: "HBO")

puts "Network Created"

puts "Create Actors"

a1 = Actor.create( first_name: "John", last_name: "Cena")
a2 = Actor.create( first_name: "Chris", last_name: "Hemsworth")
a3 = Actor.create( first_name: "Tom", last_name: "Holland")
a4 = Actor.create( first_name: "Robert", last_name: "Downey Jr")

puts "Actors Created"

puts "Create Show"

s1 = Show.create( name: "John Cena, you can't see me", network_id: n1)
s2 = Show.create( name: "I am Thor son of Odin", network_id: n2)
s3 = Show.create( name: "Friendly Neighborhood Spiderman", network_id: n3)
s4 = Show.create( name: "I am Ironman", network_id: n4)

puts "Show Created"

puts "Create Characters"

Character.create( name: "The Champ", actor_id: a1, show_id: s1, catchphrase: "You Can't See Me") # { :actor_id => a1.id}
Character.create( name: "Thor", actor_id: a2, show_id: s2, catchphrase: "This drink, I like it! ANOTHER!")
Character.create( name: "Spiderman", actor_id: a3, show_id: s3, catchphrase: "You have a metal arm? That is awesome dude!")
Character.create( name: "Ironman", actor_id: a4, show_id: s4, catchphrase: "I love you 3000")

puts "Characters Created"



puts "done"



