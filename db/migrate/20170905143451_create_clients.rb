class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :age
      t.boolean :is_active
      t.string :email

      t.timestamps
    end
  end
end
