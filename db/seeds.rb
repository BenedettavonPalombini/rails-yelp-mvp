# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
frenchy = {name: "frenchy", address: "7 Boundary St, London E2 7JE", category: "french"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
china =  {name: "China", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese"}
japan =  {name: "Japan", address: "56A Shoreditch High St, London E1 6PQ", category: "japanese"}
belgium =  {name: "Belgium", address: "56A Shoreditch High St, London E1 6PQ", category: "belgian"}

[frenchy, pizza_east, china, japan, belgium].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
