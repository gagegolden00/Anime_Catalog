class User < ApplicationRecord
  has_many :animes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  has_secure_password
  validates :username, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }
end

