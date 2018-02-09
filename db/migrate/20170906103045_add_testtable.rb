class AddTesttable < ActiveRecord::Migration[5.1]
  def change
    create_table :rocks, id:false, comment: "This is temp table",  options: "ENGINE=BLACKHOLE" do |t|
      t.string :name, primary_key: true
      t.string :upccode
      t.string :description
      t.text :part_number
      t.timestamps
    end
  end
end


