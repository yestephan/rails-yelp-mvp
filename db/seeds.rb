require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Restaurant.destroy_all

# 5.times do |n|
#   category = ["chinese", "italian", "japanese", "french", "belgian"]
#   number = rand(0..4)
#   restaurant = Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.full_address,
#     category: category[number]
#   )
#   puts "#{restaurant.name} created! 🌱"
# end

Review.destroy_all
number = 0
5.times do |n|
  rating = rand(1..5)
  number += 1
  content = Faker::Restaurant.review
  review = Review.new(rating: rating, content: content)
  review.restaurant = Restaurant.find(number)
  review.save
  puts "#{number} created!"
end
