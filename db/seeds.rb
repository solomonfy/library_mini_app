# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all
User.destroy_all
Checkout.destroy_all

10.times do
    Book.create(title: Faker::Book.unique.title, author: Faker::Book.author, category: Faker::Book.genre)
end

10.times do
    User.create(name: Faker::Name.unique.name, address: Faker::Address.unique.street_address)
end

15.times do
    Checkout.create(user: User.all.sample, book: Book.all.sample)
end