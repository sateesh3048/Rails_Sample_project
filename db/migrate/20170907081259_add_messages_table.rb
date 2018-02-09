class AddMessagesTable < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :description
      t.string :message_id
      t.belongs_to :supplier, index: true, foreign_key: true
      t.timestamps
    end
  end
end
