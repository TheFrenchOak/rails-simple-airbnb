# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
prng = Random.new
10.times {
    Flat.create!(
    name: Faker::Lorem.sentence,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: prng.rand(50..150),
    number_of_guests: prng.rand(1..12)
  )
}