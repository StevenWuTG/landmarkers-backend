# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "deleting all"
# Neighborhood.destroy_all
Coord.destroy_all
Landmark.destroy_all
User.destroy_all

# puts "creating hoods"

# hoods = [
#     {
#         name:"Gravesend",
#         borough: "Brooklyn",
#         zip_code: 11214
#     },
#     {
#         name: "Hell's Kitchen",
#         borough: "Manhattan",
#         zip_code: 10019
#     }
# ]

# hoods.each do |hood|
#     Neighborhood.create!(hood)
# end

puts "creating users"

steven = User.create!(username: "Steven", hometown:"Flushing", img_url: "https://img.wattpad.com/cover/61392930-288-k852540.jpg", bio: "tester bio" )

karina = User.create!(username: "Karina", hometown: "Cypress Hills", img_url: "./pics/Charmander-Pokemon.png", bio: "tester bio 2" )

puts "creating landmarks"

landmark1 = Landmark.create!(user: steven, name: "John's pizza", address: "123 fake st ,Flushing, NY, 11355", img_url:"https://media-cdn.tripadvisor.com/media/photo-s/1b/38/4b/1e/suggestion-de-plat.jpg", bio:"Best 1 dollar pizza deal for students", genre:"food")

landmark2 = Landmark.create!(user: karina, name: "Ridgewood Reservoir", address: "Jackie Robinson Pkwy, Brooklyn, NY 11208", img_url:"https://cdn.vox-cdn.com/thumbor/_nuF12hpAgcWg3d0Sb6D01r3Vxs=/0x0:3264x2448/1200x675/filters:focal(1371x963:1893x1485)/cdn.vox-cdn.com/uploads/chorus_image/image/62885850/RidgewoodReservoirBasin2__1___1_.0.jpg", bio:"Beautiful calming park", genre:"park")
landmark3 = Landmark.create!(user: karina, name: "Mike's Pizza", address: "65 fake street", img_url: "https://cdn.vox-cdn.com/thumbor/_nuF12hpAgcWg3d0Sb6D01r3Vxs=/0x0:3264x2448/1200x675/filters:focal(1371x963:1893x1485)/cdn.vox-cdn.com/uploads/chorus_image/image/62885850/RidgewoodReservoirBasin2__1___1_.0.jpg", bio: "bio", genre: "food")
landmark4 = Landmark.create!(user: karina, name: "Highland Park", address: "76 fake street", img_url: "https://cdn.vox-cdn.com/thumbor/_nuF12hpAgcWg3d0Sb6D01r3Vxs=/0x0:3264x2448/1200x675/filters:focal(1371x963:1893x1485)/cdn.vox-cdn.com/uploads/chorus_image/image/62885850/RidgewoodReservoirBasin2__1___1_.0.jpg", bio: "bio", genre: "park")
landmark5 = Landmark.create!(user: karina, name: "Cypress Hills Cemetary", address: "90 fake street", img_url: "https://cdn.vox-cdn.com/thumbor/_nuF12hpAgcWg3d0Sb6D01r3Vxs=/0x0:3264x2448/1200x675/filters:focal(1371x963:1893x1485)/cdn.vox-cdn.com/uploads/chorus_image/image/62885850/RidgewoodReservoirBasin2__1___1_.0.jpg", bio: "bio", genre: "cemetary")

coord1 = Coord.create!(lat: 40.68593, lng: -73.87294, landmark: landmark2)
coord2 = Coord.create!(lat: 40.70, lng: -73.88, landmark: landmark3)
coord3 = Coord.create!(lat: 40.68889048464186, lng: -73.88638553301425, landmark: landmark4)
coord4 = Coord.create!(lat: 40.69329656547786, lng: -73.87490911398429, landmark: landmark5)
coord5 = Coord.create!(lat: 40.75858, lng: -73.81852, landmark: landmark1)