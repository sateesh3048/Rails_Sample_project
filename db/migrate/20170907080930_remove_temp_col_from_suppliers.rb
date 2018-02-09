class RemoveTempColFromSuppliers < ActiveRecord::Migration[5.1]
  def change
    remove_column :suppliers, :temp_col, :string
  end
end
