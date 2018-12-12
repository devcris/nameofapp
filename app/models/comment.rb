class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :product
scope :rating_desc, -> { order(rating: :desc) }
scope :rating_asc, -> { order(rating: :asc) }
validates :body, presence: true
validates :user, presence: true
validates :product, presence: true
validates :rating, numericality: { only_integer: true }

def comment.time_ago_in_words(from_time, options = {})
  distance_of_time_in_words(from_time, Time.now, options)
end
end
