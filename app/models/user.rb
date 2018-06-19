class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :trucks, through: :reviews

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true

  def most_recent
    self.reviews = self.reviews.order(id: :desc)
  end
end
