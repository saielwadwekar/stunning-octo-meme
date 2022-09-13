class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :password

      t.timestamps
      
    end
  end
end
