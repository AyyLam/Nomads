class Truck < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews

  validates :name, presence: true
  validates :name, uniqueness: true 
  validates :specialty, length: {minimum: 2, maximum: 30}
  validates :specialty, presence: true
  validates :specialty, length: {minimum: 2, maximum: 20}

end
