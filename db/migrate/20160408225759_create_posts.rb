class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.string :user_id
      t.integer :date
      t.text :description
      t.integer :like_button

      t.timestamps null: false
    end
  end
end
