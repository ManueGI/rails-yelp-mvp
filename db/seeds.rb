# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
require_relative "../app/models/restaurant"
require 'active_record'

Restaurant.destroy_all

CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]


puts 'Creating restaurants...'
10.times do
  restaurant = Restaurant.new(name: Faker::TvShows::RuPaul.queen, address: Faker::Movies::LordOfTheRings.location, category: CATEGORIES.sample, phone_number: Faker::PhoneNumber.cell_phone_in_e164)
  restaurant.save!
end

puts 'Finished!'
