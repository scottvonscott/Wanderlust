class User < ApplicationRecord
    has_many :comments
    has_many :bookmarks
    has_many :attractions, through: :bookmarks
    has_many :trips
    has_many :itineraries, through: :trips
end
