class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lair
  has_many :messages
  has_one :conversation
end
