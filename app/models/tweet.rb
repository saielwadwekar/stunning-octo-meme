class Tweet < ApplicationRecord
	validates :user_name, :content, presence: true # need to add user_detail_id
	#belongs_to :user_detail
end
