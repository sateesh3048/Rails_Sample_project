class RenameMessagesTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :messages, :msgs
  end
end
