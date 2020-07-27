class Destination < ApplicationRecord
    has_many :attractions
    has_many :itineraries, through: :attractions
end
