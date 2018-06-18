class User < ApplicationRecord
  has_many :reviews
  has_many :trucks, through: :reviews
end
