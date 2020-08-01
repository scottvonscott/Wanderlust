class ScheduledAttraction < ApplicationRecord
  belongs_to :itinerary
  belongs_to :attraction
  validates :time_of_day, presence: true
  validates :time_of_day, inclusion: {in: %w(Morning Afternoon Evening), message: "You must choose a valid time to schedule an attraction"}
  accepts_nested_attributes_for :attraction, reject_if: proc {|attributes| attributes['name'].blank?}




  
end


