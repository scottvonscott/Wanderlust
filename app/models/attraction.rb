class Attraction < ApplicationRecord
  belongs_to :destination
  belongs_to :itinerary
end
