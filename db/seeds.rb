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
  number: 1,
  room_category: vip,
  hotel: apolo
)

vip2 = Room.create!(
  number: 2,
  room_category: vip,
  hotel: apolo
)

vip3 = Room.create!(
  number: 3,
  room_category: vip,
  hotel: apolo
)

single1 = Room.create!(
  number: 4,
  room_category: single,
  hotel: jardin
)

puts "rooms done"

puts "Creating users..."

antonio = User.create!(
  email: "antonio@powermouse.co",
  password: "123123",
  first_name: "Antonio",
  last_name: "Sanchez",
  admin_role: true
)

juanita = User.create!(
  email: "juanita@powermouse.co",
  password: "123123",
  first_name: "Juanita",
  last_name: "Elgato",
  supervisor_role: true
)

pablita = User.create!(
  email: "pablita@powermouse.co",
  password: "123123",
  first_name: "Pablita",
  last_name: "Elhamster",
  user_role: true
)
puts "Users created!"
