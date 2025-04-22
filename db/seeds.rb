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
puts "Deployed!"

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
puts "Deployed!"
