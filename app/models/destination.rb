class Destination < ApplicationRecord
    has_many :attractions
    has_many :itineraries, through: :attractions

    validates :country, :continent, :primary_language, presence: true
end
