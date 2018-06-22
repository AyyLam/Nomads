class User < ApplicationRecord
  has_secure_password
  has_many :reviews
  has_many :trucks, through: :reviews

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :name, length: {minimum: 0, maximum: 20}
  validates :email, length: {minimum: 0, maximum: 20}
  validates :password, length: {minimum: 0, maximum: 700}

  def most_recent
    self.reviews = self.reviews.order(id: :desc)
  end
end
