class Attraction < ApplicationRecord
  belongs_to :destination
  has_many :comments
  has_many :bookmarks
  has_many :scheduled_attractions
  has_many :itineraries, through: :scheduled_attractions
  accepts_nested_attributes_for :destination

  validates :name, :description, presence: true

  def day_order
    self.sort_by do |t|
      t.time_of_day
    end
  end

  def location
    "#{self.destination.city}, #{self.destination.country}"
end


  
end
