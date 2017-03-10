class FriendRequest < ApplicationRecord
  belongs_to :sender, foreign_key: "user_id", class: "User"
  belongs_to :reciever, foreign_key: "friend_id", class: "User"
end
