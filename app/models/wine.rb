class Wine < ActiveRecord::Base
	validates :year, length: {maximum: 4}
	belongs_to :user
end
