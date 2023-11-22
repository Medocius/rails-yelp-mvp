# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian", phone_number: "123456789"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian", phone_number: "987654321"}
burger_king =  {name: "Burger King", address: "32B Tovis St, Budapest 1022", category: "french"}
dominos =  {name: "Dominos", address: "12C Busoni St, Eindhoven 5654NP", category: "japanese"}
vapiano = {name: "Vapiano", address: "92 Aladar St, Bekescsaba 4251", category: "chinese"}

[dishoom, pizza_east, burger_king, dominos, vapiano].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
