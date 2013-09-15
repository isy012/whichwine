class Memory < ActiveRecord::Base
	validates :name, :description, :address, :presence => true
end
