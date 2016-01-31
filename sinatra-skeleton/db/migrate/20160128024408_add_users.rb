class AddUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :password
      t.string :address
      t.decimal :rating
      t.string :email
      t.timestamps null: false
    end
  end
end
