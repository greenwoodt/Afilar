class Customer < ApplicationRecord
  belongs_to :user
  has_many :reviews, through: :bookings
  validates :first_name, :last_name, :email_address, :telephone, presence: true
end
