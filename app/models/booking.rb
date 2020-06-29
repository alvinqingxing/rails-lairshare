class Booking < ApplicationRecord
  belongs_to :villain
  belongs_to :lair
  has_many :messages
end
