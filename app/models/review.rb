class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5, message: "must be between 0  and 5" }, numericality: { only_integer: true }
end
