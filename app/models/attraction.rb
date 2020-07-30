class Attraction < ApplicationRecord
  belongs_to :destination
  has_many :comments
  has_many :bookmarks
  has_many :scheduled_attractions
  has_many :itineraries, through: :scheduled_attractions
  accepts_nested_attributes_for :destination

  validates :name, :description, presence: true
  
end
