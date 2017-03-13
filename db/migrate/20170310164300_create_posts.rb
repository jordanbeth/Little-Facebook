class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :content, null: false
      t.integer :creator_id, foreign_key: true
      t.integer :timeline_id, foreign_key: true

      t.timestamps
    end
  end
end
