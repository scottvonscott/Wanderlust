class Attraction < ApplicationRecord
  belongs_to :destination
  belongs_to :itinerary
  has_many :comments
  has_many :bookmarks
end
