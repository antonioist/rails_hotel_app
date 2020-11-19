# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Obliterating starlight hotel"

Room.destroy_all
RoomCategory.destroy_all
Hotel.destroy_all
User.destroy_all

puts "everything was destroyed succesfully"

puts "creating amazing hotels..."

apolo = Hotel.create!(
  name: "Apolo",
  address: "Providencia",
  phone_number: "12345678"
)

chateau = Hotel.create!(
  name: "Le Chateau",
  address: "Providencia",
  phone_number: "12345678"
)

jardin = Hotel.create!(
  name: "Jardin",
  address: "Providencia",
  phone_number: "12345678"
)

parque = Hotel.create!(
  name: "Del Parque",
  address: "Providencia",
  phone_number: "12345678"
)

carmen = Hotel.create!(
  name: "Carmen",
  address: "Santiago",
  phone_number: "12345678"
)

puts "hotels done"

puts "creating room categories..."

vip = RoomCategory.create!(
  category: "VIP",
  momento: 5000,
  noche: 10000,
  hora_extra: 1000,
  hotel: apolo
)

single = RoomCategory.create!(
  category: "SINGLE",
  momento: 3000,
  noche: 70000,
  hora_extra: 500,
  hotel: apolo
)

double = RoomCategory.create!(
  category: "DOUBLE",
  momento: 4000,
  noche: 90000,
  hora_extra: 900,
  hotel: apolo
)

puts "room categories done"

puts "creating rooms..."

vip1 = Room.create!(
  number: 101,
  room_category: vip,
  hotel: apolo
)

vip2 = Room.create!(
  number: 201,
  room_category: vip,
  hotel: apolo
)

vip3 = Room.create!(
  number: 301,
  room_category: vip,
  hotel: apolo
)

single1 = Room.create!(
  number: 401,
  room_category: single,
  hotel: jardin
)

puts "rooms done"

puts "Creating users..."

antonio = User.create!(
  email: "antonio@powermouse.co",
  password: "123123",
  admin_role: true
)

User.create!(
  email: "pselman@powermouse.co",
  password: "123456",
  admin_role: true
)

puts "Users created!"
