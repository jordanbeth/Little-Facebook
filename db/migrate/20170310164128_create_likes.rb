class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :liker_id, foreign_key: true
      t.references :post

      t.timestamps
    end
  end
end
