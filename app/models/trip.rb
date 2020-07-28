class Trip < ApplicationRecord
  belongs_to :user
  has_many :itineraries
  has_many :destations, through: :itineraries

  validates :title, presense: true
  validates :days_duration, numericality: {only_integer: true}
  validates :day_of_trip, numericality: { greater_than: 0 }

end
