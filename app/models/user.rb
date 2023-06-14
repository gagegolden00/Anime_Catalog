class User < ApplicationRecord
  has_many :anime
  has_many :favorites, dependent: :destroy
  has_secure_password
  
  #validation for sign up
  validates :username, presence: true,
           uniqueness: { case_sensitive: false },
           length: { minimum: 4, maximum: 50 }
  validates :password,
            presence: true,
            confirmation: true,
            length: {minimum: 12}
  
  # validation for changing password
  validates :new_password,
            presence: true,
            confirmation: true,
            length: {minimum: 12 }
  
end

