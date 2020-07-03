class AddBookingRefToConversations < ActiveRecord::Migration[6.0]
  def change
    add_reference :conversations, :booking, null: false, foreign_key: true
  end
end
