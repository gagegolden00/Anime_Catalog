class Anime < ApplicationRecord
  belongs_to :user
  has_many :favorites
  
  validates :title, presence: true, length: { minimum: 1, maximum: 100 }
  validates :genre, presence: true, length: { minimum: 1, maximum: 50 }
  validates :episodes, presence: true, length: { minimum: 1, maximum: 2000 }
end

