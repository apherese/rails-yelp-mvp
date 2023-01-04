# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "12345678", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "98765678", category: "italian"}
septime = {name: "Septime", address: "22 rue du cherche-midi, 75006 Paris", phone_number: "12388678", category: "french"}
pause_cafe = {name: "Pause-Café", address: "6 rue traversière, 75012 Paris", phone_number: "12388998", category: "french"}
shokudo = {name: "Jinchan Shokudo", address: "55 rue du faubourg St Antoine, 75012 Paris", phone_number: "17778998", category: "chinese"}

[dishoom, pizza_east, septime, pause_cafe, shokudo].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
