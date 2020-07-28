class Itinerary < ApplicationRecord
  belongs_to :trip
  has_many :attractions
  has_many :destinations, through: :attractions

  validates  :date, presense: true
  validates :day_of_trip, numericality: {only_integer: true}
  validates :day_of_trip, numericality: { greater_than: 0 }
  validates :day_of_trip, numericality: { greater_than: trip.days_duration }
#  this validation needs to make sure that the itinerary day isn't greater than trip duration.

end
