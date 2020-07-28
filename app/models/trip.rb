class Trip < ApplicationRecord
  belongs_to :user
  has_many :itineraries
  has_many :destations, through: :itineraries

  validates :title, presence: true
  validates :days_duration, numericality: true
  validates :days_duration, numericality: {greater_than: 0, message: "must be at least a day trip!"}
# this validation isnt working
end
