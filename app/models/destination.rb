class Destination < ApplicationRecord
    has_many :attractions, :dependent => :destroy
    has_many :itineraries, through: :attractions

    validates :city, :country, :continent, :primary_language, presence: true
    validates :city, uniqueness: true

    # def alphabetical
    #     self.order(':city ASC')
    # end
end
