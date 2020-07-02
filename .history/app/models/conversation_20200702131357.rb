class Conversation < ApplicationRecord
  belongs_to :booking, :foreign_key => :booking_id, class_name: ‘Booking’
  has_many :messages, dependent: :destroy
end
