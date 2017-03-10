class Post < ApplicationRecord
  belongs_to :creator, :class_name => :User
  has_many :likes
  has_many :user_likes, through: :likes, source: :user
end
