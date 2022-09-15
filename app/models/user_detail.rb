class UserDetail < ApplicationRecord
  validates :first_name, :last_name, :user_name, :password, presence: true #need to add :tweet_id
  has_many :tweet
end
