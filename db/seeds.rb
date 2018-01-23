# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Guest.destroy_all

puts 'Creating Guests...'

6.times do
  Guest.create!(
    name: Faker::Company.name,
    email: Faker::Internet.email,
    coming: [true, false].sample,
    excuse: Faker::Lorem.sentences(1),
    adult: Faker::Number.between(1, 5),
    child: Faker::Number.between(1, 5)
  )
end

puts 'Finished!'
