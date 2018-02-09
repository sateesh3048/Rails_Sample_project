class AddPartNoToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :part_no, :string
    add_index :products, :part_no
  end
end
