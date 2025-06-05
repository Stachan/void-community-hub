# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning Database..."
User.destroy_all
Roster.destroy_all

### Users ###

puts "Creating test users..."
user_seeds = [
  { username: "User1", email: "user1@example.com", password: "password123" },
  { username: "User2", email: "user2@example.com", password: "password123" }
]

user_seeds.each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.username}"
end
puts "Users Registered!"

### Rosters ###

puts "Creating dummy rosters..."
roster_seeds = [
  { name: "Tribune Marius' Strike Force", point_limit: 300 },
  { name: "Sgt. Kowalsky's Hammer Team", point_limit: 1000 },
  { name: "AndroSexy & uNOit", point_limit: 500 }
]

roster_seeds.each do |attributes|
  roster = Roster.create!(attributes)
  puts "Created #{roster.name}"
end
puts "Rosters Initialized!"

### Test Units ###

puts "Creating dummy rosters..."
unit_seeds = [
  { name: "Legionary", cal0_cost: 19, cal1_cost: 26, cal2_cost: -1, cal3_cost: -1,
    assault: 3, shooting: 3, strength: 4, toughness: 4, wound: 1, command: 3,
    size: 2, move: 4 },
  { name: "Legionary Exo-Suit Decurion", cal0_cost: -1, cal1_cost: 38, cal2_cost: 48, cal3_cost: 57,
    assault: 4, shooting: 3, strength: 6, toughness: 6, wound: 1, command: 5,
    size: 3, move: 4 },
  { name: "Titus IV Scorpio", cal0_cost: -1, cal1_cost: 168, cal2_cost: 210, cal3_cost: -1,
    assault: 5, shooting: 4, strength: 7, toughness: 7, wound: 4, command: 4,
    size: 6, move: 4 },
]

unit_seeds.each do |attributes|
  unit = Unit.create!(attributes)
  puts "Created #{unit.name}"
end
puts "Unit Deployed!"
