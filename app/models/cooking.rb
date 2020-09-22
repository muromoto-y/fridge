class Cooking < ApplicationRecord
  
  has_many :bookmarks
  has_many :users, through: :bookmarks
  has_one_attached :image

  with_options presence: true do
    validates :cooking_name
    validates :explanation
    validates :ingredients1 
    validates :quantity1 
  end


end
