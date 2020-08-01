class Destination < ApplicationRecord
    has_many :attractions, :dependent => :destroy
    has_many :itineraries, through: :attractions

    validates :city, :country, :continent, :primary_language, presence: true
    validates :city, uniqueness: { scope: :country, message: "That city already exists in that country"}
    accepts_nested_attributes_for :attractions
    # def alphabetical
    #     self.order(':city ASC')
    # end
end
