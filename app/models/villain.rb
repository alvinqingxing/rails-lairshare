class Villain < ApplicationRecord
  has_many :messages
  has_many :bookings
  has_many :lairs
end
