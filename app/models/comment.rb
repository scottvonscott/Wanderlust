class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :attraction

  validates :body, presence: true

  def posted_by
    self.user.full_name
  end
  
end
