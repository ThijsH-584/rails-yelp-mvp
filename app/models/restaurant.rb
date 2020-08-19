class Restaurant < ApplicationRecord
	has_many :reviews, dependent: :destroy
	validates :name, :address, :phone_number, presence: true
	restaurant_categories = ["chinese", "italian", "japanese", "french", "belgian"]
	validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
	    message: "%{value} is not a valid entry" }
end

