class AddSupplierForeignKeyToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :accounts, :suppliers, on_delete: :cascade, on_update: :cascade
  end
end


