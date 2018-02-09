class RemoveSupplierRefFromMessages < ActiveRecord::Migration[5.1]
  def change
    remove_reference :messages, :supplier
  end
end
