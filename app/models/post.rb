class Post < ApplicationRecord
  belongs_to :creator, :class_name => :User
  belongs_to :timeline, :class_name => :User

  has_many :likes
  has_many :likers, through: :likes
end
