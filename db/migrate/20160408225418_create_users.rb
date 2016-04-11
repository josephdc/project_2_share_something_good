class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :email
      t.string :city
      t.string :state
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
