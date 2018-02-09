class CreateContactAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.integer :zip
      t.references :person, index: true, foreign_key: true

      t.timestamps
    end
  end
end
