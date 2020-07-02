class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lair
  has_many :messages
end
