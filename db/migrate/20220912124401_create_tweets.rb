class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.bigint :tweet_id, null: false, unique: true
      t.string :user_name, null: false, unique: true
      t.string :content, null: false

      t.timestamps
      add_foreign_key :id
    end
  end
end
