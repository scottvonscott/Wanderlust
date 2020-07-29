class User < ApplicationRecord
    has_secure_password
    has_many :comments
    has_many :bookmarks
    has_many :attractions, through: :bookmarks
    has_many :trips
    has_many :itineraries, through: :trips

    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    validates :password, confirmation: true
    # validates :password_confirmation, presence: true

    def self.create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.first_name = auth['info']['first_name']
            u.last_name = auth['info']['last_name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)
            u.password_confirmation = u.password
        end
    end

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
