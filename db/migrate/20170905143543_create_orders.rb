class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :qty
      t.decimal :price
      t.date :ordered_date
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
