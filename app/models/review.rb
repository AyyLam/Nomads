class Review < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :truck
  belongs_to :user

  validates :rating, numericality: {less_than_or_equal_to: 5, greater_than_or_equal_to: 1}
  validates :content, length: {minimum: 0, maximum: 700}
  validates :rating, presence: true



end
