class Review < ApplicationRecord
  belongs_to :restaurant # @review.restaurant
  validates :content, presence: true, length: { minimum: 5 }
  validates :rating, presence: true, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }, numericality: { only_integer: true }
end
