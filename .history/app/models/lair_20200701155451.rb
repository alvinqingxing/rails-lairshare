class Lair < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :favourites
end
