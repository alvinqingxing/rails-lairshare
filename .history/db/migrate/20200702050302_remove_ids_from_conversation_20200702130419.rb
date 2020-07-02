class RemoveIdsFromConversation < ActiveRecord::Migration[6.0]
  def change
    remove_column :conversations, :host_id, :integer
    remove_column :conversations, :renter_id, :integer
  end
end
