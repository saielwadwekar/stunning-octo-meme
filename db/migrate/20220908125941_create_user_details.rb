class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.bigint :user_id, null: false, unique: true
      t.string :first_name, null: false, unique: true
      t.string :last_name, null: false
      t.string :user_name, null: false
      t.string :password, null: false

      t.timestamps
      add_foreign_key :user_id
    end
  end
end
