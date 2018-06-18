class Review < ApplicationRecord
  belongs_to :truck
  belongs_to :user

  validates :rating, numericality: {less_than: 6, greater_than: 0}
  validates :content, length: {minimum: 0, maximum: 1500}
  validates :rating, presence: true

end
