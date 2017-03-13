class User < ApplicationRecord
  has_many :friends
  has_many :friend_requests
  has_many :posts, {foreign_key: :creator_id}
  has_many :timeline_posts, {foreign_key: :timeline_id, class_name: "Post"}

  has_many :likes, {foreign_key: :liker_id}
  has_many :liked_posts, {foreign_key: :liker_id, class_name: "Post"}

  validates :first_name, :last_name, presence: true
  validates :email, presence: true, uniqueness: true

  has_secure_password
end
