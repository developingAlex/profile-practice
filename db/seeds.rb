# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create!(email: 'u1@u.com', password: 'password', password_confirmation: 'password')
user2 = User.create!(email: 'u2@u.com', password: 'password', password_confirmation: 'password')
profile1 = Profile.create!(first_name: 'fn1', last_name: 'ln1', hobbies: 'h1', location: 'l1', follower_count: 0, user: user1)
profile2 = Profile.create!(first_name: 'fn2', last_name: 'ln2', hobbies: 'h2', location: 'l2', follower_count: 0, user: user2)