class Truck < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :neighborhood

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :specialty, length: {minimum: 2, maximum: 30}
  validates :specialty, presence: true

  def most_recent
    self.reviews = self.reviews.order(id: :desc)
  end

  def avg_rating
    total=0.0
    counter=0
    self.reviews.each_with_index do |review|
      total+=review.rating
      counter+=1
    end
    total/=counter
    total.round(2)
  end
end
