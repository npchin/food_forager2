class FoodDetail < ActiveRecord::Base
	belongs_to :event
	belongs_to :dietary_restriction

	validates :event, :presence => :true
end
