class Destination < ApplicationRecord
    has_many :attractions
    has_many :itineraries, through: :attractions

    validates :city, :country, :continent, :primary_language, presence: true
    validates :city, uniqueness: true

    
end
