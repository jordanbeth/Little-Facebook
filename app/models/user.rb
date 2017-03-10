class User < ApplicationRecord
  has_many :friends
  has_many :friend_requests
  has_many :posts
  has_many :likes
  has_many :post_likes, through: :likes, source: :post

  validates :username, :email, presence: true, uniqueness: true

  has_secure_password
end
