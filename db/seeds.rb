# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jordan = User.create!(username: "Jordan", email: "jordan@gmail.com", password_digest: "password")
tatiana = User.create!(username: "Tatiana", email: "tatiana@gmail.com", password_digest: "password")
karan = User.create!(username: "Karan", email: "karan@gmail.com", password_digest: "password")

Friend.create!(user_id: karan.id, friend_id: tatiana.id)
Friend.create!(user_id: jordan.id, friend_id: karan.id)

FriendRequest.create!(user_id: tatiana.id, friend_id: jordan.id)
