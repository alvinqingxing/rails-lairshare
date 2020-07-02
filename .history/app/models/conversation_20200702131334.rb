class Conversation < ApplicationRecord
  belongs_to :booking, :foreign_key => :booking_id, class_name: ‘Booking’
  has_many :messages, dependent: :destroy
  
  scope :between, -> (booking.user_id, recipient_id) do
    where(“(conversations.sender_id = ? AND conversations.recipient_id =?) 
    OR (conversations.sender_id = ? AND conversations.recipient_id =?)”, 
    sender_id,recipient_id, recipient_id, sender_id)
  end
end
