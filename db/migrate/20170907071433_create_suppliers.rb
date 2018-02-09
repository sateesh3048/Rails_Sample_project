class CreateSuppliers < ActiveRecord::Migration[5.1]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :desc
      t.string :temp_col

      t.timestamps
    end
  end
end
