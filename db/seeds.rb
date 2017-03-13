# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jordan = User.create(first_name: "Jordan", last_name: "afafafhhw", email: "jordan@gmail.com", password_digest: "password")
tatiana = User.create(first_name: "Tatiana", last_name: "fdsf", email: "tatiana@gmail.com", password_digest: "password")
karan = User.create(first_name: "Karan", last_name: "sdafdsaf", email: "karan@gmail.com", password_digest: "password")

Friend.create(user_id: karan.id, friend_id: tatiana.id)
Friend.create(friend_id: karan.id, user_id: tatiana.id)

Friend.create(user_id: jordan.id, friend_id: karan.id)
Friend.create(friend_id: jordan.id, user_id: karan.id)


FriendRequest.create(user_id: tatiana.id, friend_id: jordan.id)


50.times do
  Post.create(content: Faker::Hipster.paragraph(3), creator_id: (rand(4)+1))
end
