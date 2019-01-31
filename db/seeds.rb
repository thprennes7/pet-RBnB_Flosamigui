# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Stroll.destroy_all
Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

15.times do
  City.create!(city_name: Faker::Address.city)
end

50.times do
  Dogsitter.create!(name: Faker::Name.name, city_id: City.all.sample.id)
end

50.times do
  Dog.create!(name: Faker::Dog.name, city_id: City.all.sample.id)
end

150.times do
  Stroll.create!(dog_id: Dogsitter.all.sample.id, dogsitter_id: Dog.all.sample.id, city_id: City.all.sample.id)
end
