class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.date :day
      t.text :body, null: false
      t.string :image, null: false
      t.integer :likes_count
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
