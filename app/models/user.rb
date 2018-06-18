class User < ApplicationRecord
  has_many :reviews
  has_many :trucks, through: :reviews

  validates :name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
