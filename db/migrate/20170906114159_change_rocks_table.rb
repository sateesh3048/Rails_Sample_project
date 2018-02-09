class ChangeRocksTable < ActiveRecord::Migration[5.1]
  def change
    change_table :rocks, id: true do |t|
      t.remove :upccode
      t.rename :part_number, :part_no
      t.change :part_no, :string
      t.index :part_no
      t.string :color
    end
  end
end
