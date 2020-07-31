class Itinerary < ApplicationRecord
  belongs_to :trip
  has_many :scheduled_attractions, :dependent => :destroy
  has_many :destinations, through: :scheduled_attractions

  # validates  :date, presence: true
  # validates :day_of_trip, numericality: {only_integer: true}
  # validates :day_of_trip, numericality: { greater_than: 0 }
#  this validation needs to make sure that the itinerary day isn't greater than trip duration.


  def day
     "Day #{self.day_of_trip}"
  end
end
