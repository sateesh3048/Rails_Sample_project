class AddSupplierRefToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_reference :accounts, :supplier_id
  end
end
