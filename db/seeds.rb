# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning the database..."
Flat.destroy_all

puts "creating 5 flats..."

counter = 0
names = ["Sally's lovely homestay", "Brian's beach resort", "Pete's villa", "Lovely apartment for two", "Party Mansion house"]
5.times do
  flat = {
    name: names[counter],
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.state}",
    description: Faker::Lorem.paragraph,
    price_per_night: rand(10..100),
    number_of_guests: rand(1..10),
    image_url: "https://picsum.photos/300/200?random=#{counter + 1}"
  }
  Flat.create(flat)
  puts "Saving flat #{counter}"
  counter += 1
end

puts "Finished"