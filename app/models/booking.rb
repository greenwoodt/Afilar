class Booking < ApplicationRecord
  belongs_to :users
  has_one :review, dependent: :destroy
end
