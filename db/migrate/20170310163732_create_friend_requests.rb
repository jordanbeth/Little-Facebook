class CreateFriendRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :friend_requests do |t|
      t.references :users, null: false
      t.integer :friend_id, null: false
      t.boolean :status, default: null

      t.timestamps
    end
  end
end
