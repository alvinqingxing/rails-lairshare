class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.integer :host_id
      t.integer :renter_id
      t.timestamps
    end
  end
end
