class Review < ApplicationRecord
  belongs_to :product

  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true

  validates_numericality_of :rating, greater_than_or_equal_to: 1
  validates_numericality_of :rating, less_than_or_equal_to: 5

end
