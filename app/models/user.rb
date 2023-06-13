class User < ApplicationRecord
  has_many :anime
  has_many :favorites, dependent: :destroy
  has_secure_password
  #validation
  validates :username, presence: true,
           uniqueness: { case_sensitive: false },
           length: { minimum: 3, maximum: 25 }
  
  validates :password, presence: true, confirmation: true
end

