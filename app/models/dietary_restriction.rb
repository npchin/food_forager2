class DietaryRestriction < ActiveRecord::Base

	validates :dietary_notes, :presence => true
end
