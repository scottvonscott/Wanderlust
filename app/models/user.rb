class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :bookmarks
    has_many :attractions, through: :bookmarks
    has_many :trips
    has_many :itineraries, through: :trips

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
end
