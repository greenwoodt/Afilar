class Customer < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings
end
