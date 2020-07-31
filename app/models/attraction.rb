class Attraction < ApplicationRecord
  belongs_to :destination
  has_many :comments, :dependent => :destroy
  has_many :bookmarks, :dependent => :destroy
  has_many :scheduled_attractions, :dependent => :destroy
  has_many :itineraries, through: :scheduled_attractions
  validates :name, :description, presence: true
  validates :name, uniqueness: true
  accepts_nested_attributes_for :destination, reject_if: proc {|attributes| attributes['city'].blank?}


  def location
    "#{self.destination.city}, #{self.destination.country}"
end

def location_order
  att = Attraction.
  att.each do |a|
    a.destination

end
