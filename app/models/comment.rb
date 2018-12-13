require 'action_view'

class Comment < ApplicationRecord
  include ActionView::Helpers::DateHelper

  belongs_to :user
  belongs_to :product

scope :rating_desc, -> { order(rating: :desc) }
scope :rating_asc, -> { order(rating: :asc) }
validates :name, presence: true
validates :body, presence: true
validates :user, presence: true
validates :product, presence: true
validates :rating, numericality: { only_integer: true }


  scope :rating_desc, -> { order(rating: :desc) }
  scope :rating_asc, -> { order(rating: :asc) }


  validates :body, presence: true
  validates :user, presence: true
  validates :product, presence: true
  validates :rating, numericality: { only_integer: true }

  def time_ago_in_words
    distance_of_time_in_words(created_at, Time.now)
  end
end
