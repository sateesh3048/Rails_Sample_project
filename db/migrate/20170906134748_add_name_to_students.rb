class AddNameToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :name, :string, limit: 30
    add_column :students, :desc, :text, null: false
    add_column :students, :is_active, :boolean, default: true
  end
end
