class Event < ActiveRecord::Base
	has_many :food_details

	mount_uploader :event_photo, EventPhotoUploader

	def full_event
		return cuisine + " " + location + last_updated.to_s
	end

	def last_updated
		return food_details.order("updated_at DESC").first.updated_at

		# Go get all the food_details that belong to this event, ordered by updated_at descending
		# Return the updated_at for the first row in the collection


	end

end
