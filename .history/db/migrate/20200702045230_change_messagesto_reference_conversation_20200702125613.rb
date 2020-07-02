class ChangeMessagestoReferenceConversation < ActiveRecord::Migration[6.0]
  def change
    t.references :conversation, index: true
    t.text :content
    t.references :user, foreign_key: true
    t.boolean :read, :default => false
    remove_column :messages, :booking, :references
  end
end
