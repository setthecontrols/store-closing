# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'
User.destroy_all
Post.destroy_all


60.times do
  User.create({
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::GameOfThrones.character,
    email: Faker::Internet.email,
    password_digest: 'password',
    })
end

40.times do
  user = User.all.sample
  user.posts.create({
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    phone_number: Faker::PhoneNumber.cell_phone,
    tag: Faker::Commerce.product_name,
    close_date: Faker::Date.forward(23),
    description: Faker::Hacker.say_something_smart,
    user_id: user.id
    })
end

60.times do
  user = User.all.sample
  post = Post.all.sample
  post.comments.create!({
    comment: Faker::ChuckNorris.fact,
    user_id: user.id,
    post_id: post.id
    })
end
