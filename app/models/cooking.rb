class Cooking < ApplicationRecord
  
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :cooking_name
    validates :explanation
    validates :ingredients1 
    validates :quantity1 
  end

  def self.search(search)
    if search != ""
      Cooking.where('explanation LIKE(?)', "%#{search}%")
    else
      Cooking.all
    end
  end

end
