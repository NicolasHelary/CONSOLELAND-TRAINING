# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "destroying everything"

Reservation.destroy_all
Console.destroy_all
User.destroy_all



puts "creating users"
user1 = User.create!(first_name: "Nico", last_name: "Nounet", email: "nico@nounet.com", password: "azerty")
user2 = User.create!(first_name: "Hector", last_name: "Ticolis", email: "hector@ticolis.com", password: "azerty")
user3 = User.create!(first_name: "Tojo", last_name: "Dev1", email: "tojo@dev.fr", password: "azerty")
user4 = User.create!(first_name: "Romualdo", last_name: "Dev2", email: "romualdo@dev.com", password: "azerty")
user5 = User.create!(first_name: "Brice", last_name: "Dev3", email: "brice@dev.com", password: "azerty")
puts "users created!"

puts "creating consoles"
console1 = Console.create!(name: "DS", brand: "nintendo", description: "version platine", user_id: user1.id)
console2 = Console.create!(name: "Gameboy", brand: "nintendo", description: "1st gen", user_id: user2.id)
console3 = Console.create!(name: "Playstation", brand: "Sony", description: "1st gen", user_id: user3.id)
console4 = Console.create!(name: "PS3", brand: "Sony", description: "Works perfectly", user_id: user4.id)
console5 = Console.create!(name: "Xbox", brand: "Microsoft", description: "1st gen", user_id: user5.id)
puts "consoles created!"

puts "creating reservations"
reservation1 = Reservation.create(user_id: user1, console: console1)
puts "reservations created!"

puts "loading user_pics"
user_pic1 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655891928/print3d/nicolas_l8hk0y.jpg')
user_pic2 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/griffin_lwgesx.jpg')
user_pic3 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/theo_gfip2f.jpg')
user_pic4 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/sophie_zl8jna.jpg')
user_pic5 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655889461/print3d/Serkan_yng975.jpg')
puts "user_pics loaded!"


puts "loading console_pics"
console_pic1 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Can_opener_exf0kd.jpg')
console_pic2 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Beer_Crate_Battery_Holder_l5whll.png')
console_pic3 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Disk_Rack_Roller_fzcrow.jpg')
console_pic4 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Air_ventilation_valve_xvrkbb.jpg')
console_pic5 = URI.open('https://res.cloudinary.com/ddgdamfek/image/upload/v1655826341/print3d/Ice_Dragon_decukc.jpg')
puts "console_pics loaded !"


puts "That's all folks !"
