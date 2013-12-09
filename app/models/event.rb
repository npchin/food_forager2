class Event < ActiveRecord::Base
	belongs_to :user
	has_many :food_details
	has_many :dietary_restrictions, :through => :food_details


	validates :location, :presence => true

	mount_uploader :event_photo, EventPhotoUploader

	def full_event
		return cuisine + " " + location
	end


	def last_updated
		if food_details.any?
			if food_details.order("updated_at DESC").first.updated_at > updated_at
				return food_details.order("updated_at DESC").first.updated_at
			else
				return updated_at
			end
			
		else
			return  updated_at
		end

		# Go get all the food_details that belong to this event, ordered by updated_at descending
		# Return the updated_at for the first row in the collection


	end

end
