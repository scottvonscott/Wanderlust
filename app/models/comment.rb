class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :attraction

  validates :body, presence: true
  
end
