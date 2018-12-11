class Product < ApplicationRecord
  has_many :orders
  has_many :comments
  validates :name, presence: true
def highest_rating_comment
  comments.rating_desc.first
end

def worst_rating_comment
  comments.rating_asc.first
end

ratyrate_rateable "speed", "material", "price"

end
