class Trip < ApplicationRecord
  belongs_to :user
  has_many :itineraries, :dependent => :destroy
  has_many :destations, through: :itineraries

  validates :title, presence: true
  validates :days_duration, numericality: true
  validates :days_duration, numericality: {greater_than: 0, message: "must be at least a day trip!"}


def days_to_plan
 d = 0
 while self.days_duration > d
    d += 1
    self.itineraries.build(day_of_trip: d)
end
  self.save 
end

def update_days(new_days)
   if self.days_duration < new_days.to_i
    add_days(new_days)
   else
    subtract_days(new_days)
  end
end

  def add_days(days)
    last = self.itineraries.last.day_of_trip
    while last < days.to_i
      last += 1
      self.itineraries.build(day_of_trip: last)
    end
    self.save
  end

  def subtract_days(days)
    last = self.itineraries.last.day_of_trip
    while last > days.to_i
      last -= 1
      self.itineraries.last.delete
    end
    self.save
  end
end