# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
ramiro = { name: "Ramiro", address: "Almirante Reis", phone_number: "212121221" , category: "elgian" }
pizza = { name: "Mad Pizza", address: "Amoreiras", phone_number: "212121243", category: "italian" }
noori = { name: "Noori", address: "Campo de Ourique", phone_number: "212165651", category: "japanese" }
clandestino = { name: "Clandestino", address: "Martim Moniz", phone_number: "216553776", category: "chinese" }
brasserie = { name: "La brasserie de l'entrecote", address: "Marina", phone_number: "212343554", category: "french" }
[ ramiro, pizza, noori, clandestino, brasserie ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
