class RenameMessageIdColumnInMessagesTable < ActiveRecord::Migration[5.1]
  def change
    rename_column :messages, :message_id, :sms_id
  end
end
