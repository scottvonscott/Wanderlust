class Itinerary < ApplicationRecord
  belongs_to :trip
  has_many :attractions
  has_many :destinations, through: :attractions
end
