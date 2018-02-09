class AddIndexOnSupplieIdToAccountsTable < ActiveRecord::Migration[5.1]
  def change
    add_index :accounts, :supplier_id, name: "by_supplier_id", unique: true 
  end
end
