# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Obliterating starlight hotel"

Hotel.destroy_all

puts "everything was destroyed succesfully"

puts "creating amazing hotels"

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
