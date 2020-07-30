class Attraction < ApplicationRecord
  belongs_to :destination
  has_many :comments
  has_many :bookmarks
  has_many :scheduled_attractions
  has_many :itineraries, through: :scheduled_attractions
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  accepts_nested_attributes_for :destination, reject_if: proc {|attributes| attributes['city'].blank?}


  def location
    "#{self.destination.city}, #{self.destination.country}"
end

end
