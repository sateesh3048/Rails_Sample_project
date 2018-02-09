class RemoveSupplierRefFromMessagesTable < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :messages, :suppliers
  end
end
