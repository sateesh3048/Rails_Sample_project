class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :account_number
      #t.references :supplier, foreign_key: true, index:true
      t.belongs_to :supplier
    end
  end
end
