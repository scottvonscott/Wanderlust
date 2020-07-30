class ScheduledAttraction < ApplicationRecord
  belongs_to :itinerary
  belongs_to :attraction
  accepts_nested_attributes_for :attraction, reject_if: proc {|attributes| attributes['name'].blank?}


  
end


