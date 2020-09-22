class Cooking < ApplicationRecord
  
  has_many :bookmarks
  has_many :users, through: :bookmarks
  has_one_attached :image

end
