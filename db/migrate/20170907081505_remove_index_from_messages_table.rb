class RemoveIndexFromMessagesTable < ActiveRecord::Migration[5.1]
  def change
    remove_index :messages, :supplier_id
  end
end
