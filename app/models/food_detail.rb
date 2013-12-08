class FoodDetail < ActiveRecord::Base
	belongs_to :event
	belongs_to :dietary_restriction

	validates :event, :presence => :true

	mount_uploader :food_detail_photo, FoodDetailPhotoUploader
end
