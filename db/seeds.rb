puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0612345678", category: "belgian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ",  phone_number: "0612373678", category: "italian" }
not_dominos =  { name: "Not Dominos", address: "Amsterdam South, Amsterdam",  phone_number: "0612342688", category: "italian"}
bienvenue =  { name: "Lekker Eten", address: "Leidseweg 23, Leiden",  phone_number: "0612345954", category: "french" }
chinese_palace =  { name: "Chinese Palace", address: "56A Shoreditch High St, London E1 6PQ",  phone_number: "0612345143", category: "chinese"}

[ dishoom, pizza_east, not_dominos, bienvenue, chinese_palace ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"