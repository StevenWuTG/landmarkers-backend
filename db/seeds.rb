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

karina = User.create!(username: "Karina", hometown: "Cypress Hills", img_url: "https://i.ytimg.com/vi/7xh1DAKIdng/maxresdefault.jpg", bio: "tester bio 2" )


puts "creating landmarks"

landmark1 = Landmark.create!(user: steven, name: "John's pizza", address: "123 fake st ,Flushing, NY, 11355", img_url:"https://media-cdn.tripadvisor.com/media/photo-s/1b/38/4b/1e/suggestion-de-plat.jpg", bio:"Best 1 dollar pizza deal for students", genre:"Food")
landmark6 = Landmark.create!(user: steven, name: "Times Square", address: "Manhattan, NY 10036", img_url:"https://upload.wikimedia.org/wikipedia/commons/4/47/New_york_times_square-terabass.jpg", bio:"The Red Steps", genre:"Place")
landmark7 = Landmark.create!(user: steven, name: "Brooklyn Bridge Park", address: "334 Furman St, Brooklyn, NY 11201", img_url:"https://cdn.vox-cdn.com/thumbor/XzjHdvaO_YKio2tm9WKBH0ExB58=/0x0:2000x1333/1200x800/filters:focal(840x507:1160x827)/cdn.vox-cdn.com/uploads/chorus_image/image/60318235/180709_16_53_21_5DR21022.0.jpg", bio:"Old Hangout Spot", genre:"Place")

landmark2 = Landmark.create!(user: karina, name: "Ridgewood Reservoir", address: "Jackie Robinson Pkwy, Brooklyn, NY 11208", img_url:"https://cdn.vox-cdn.com/thumbor/_nuF12hpAgcWg3d0Sb6D01r3Vxs=/0x0:3264x2448/1200x675/filters:focal(1371x963:1893x1485)/cdn.vox-cdn.com/uploads/chorus_image/image/62885850/RidgewoodReservoirBasin2__1___1_.0.jpg", bio:"Beautiful calming park", genre:"park")
landmark3 = Landmark.create!(user: karina, name: "Mike's Pizza", address: "3337 Fulton St, Brooklyn, NY 11208", img_url: "https://i4.ypcdn.com/blob/607a88c3ff502f555f9fc441bfd6f9c7a2393794_400x260_crop.jpg", bio: "Really good pizza!", genre: "Food")
landmark4 = Landmark.create!(user: karina, name: "Highland Park", address: "Jamacia Ave, Brooklyn, NY 11208", img_url: "https://www.nycgovparks.org/photo_gallery/full_size/22659.jpg", bio: "Childhood & Great Place for Jogging", genre: "Park")
landmark5 = Landmark.create!(user: karina, name: "Cypress Hills Cemetary", address: "833 Jamaica Ave, Brooklyn, NY 11208", img_url: "https://brooklyneagle.com/wp-content/uploads/2017/04/cypress-hills-cemetery.jpg", bio: "Cemetary?", genre: "Cemetary?")

coord1 = Coord.create!(lat: 40.68593, lng: -73.87294, landmark: landmark2)
coord2 = Coord.create!(lat: 40.70, lng: -73.88, landmark: landmark3)
coord3 = Coord.create!(lat: 40.68889048464186, lng: -73.88638553301425, landmark: landmark4)
coord4 = Coord.create!(lat: 40.69329656547786, lng: -73.87490911398429, landmark: landmark5)

coord5 = Coord.create!(lat: 40.75858, lng: -73.81852, landmark: landmark1)
coord6 = Coord.create!(lat: 40.7580, lng: -73.9855, landmark: landmark6)
coord7 = Coord.create!(lat: 40.6991, lng: -73.9976, landmark: landmark7)

