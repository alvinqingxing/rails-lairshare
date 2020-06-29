class Lair < ApplicationRecord
  belongs_to :villain
  has_many :bookings
end
