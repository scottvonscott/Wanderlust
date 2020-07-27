class Trip < ApplicationRecord
  belongs_to :user
  has_many :itineraries
  has_many :destations, through: :itineraries
end
