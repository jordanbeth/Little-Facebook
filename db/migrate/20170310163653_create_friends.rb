class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.references :user, null: false
      t.integer :friend_id, foreign_key: true

      t.timestamps
    end
  end
end
