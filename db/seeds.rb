# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Cleaning lists'
List.destroy_all
puts 'Cleaning countries'
Country.destroy_all
puts 'Cleaning reviews'
Review.destroy_all

puts 'Creating lists'
list1 = List.create(name: 'Beautiful Places')
list2 = List.create(name: 'Good Food')
list3 = List.create(name: 'Cheap to Travel')

list = [list1, list2, list3]

puts 'Creating countries'
20.times do
  country = Country.create!(
    name: Faker::Address.country,
    rating: Country::RATING.sample,
    description: Faker::Quote.matz
  )
  puts "country #{country.id} is created."
  Review.create(
    comment: Faker::Restaurant.review,
    user_name: Faker::Name.name,
    list: list.sample,
    country:
  )
end

puts 'All Done!'
