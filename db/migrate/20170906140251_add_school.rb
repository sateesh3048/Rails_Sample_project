class AddSchool < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
      t.string :name
    end
  end
end
