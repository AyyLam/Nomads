class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :trucks, through: :reviews

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, length: {minimum: 2, maximum: 20}
  validates :email, length: {minimum: 5, maximum: 20}
  validates :password, length: {minimum: 3, maximum: 700}

  def most_recent
    self.reviews = self.reviews.order(id: :desc)
  end
end
