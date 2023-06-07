class User < ApplicationRecord
  #bcrypt security
  has_secure_password
  
  validates :username,uniqueness: true, presence: true, length: {minimum: 10, maximum: 50}
  validates :password, presence: true, length: {minimum: 12}

end
