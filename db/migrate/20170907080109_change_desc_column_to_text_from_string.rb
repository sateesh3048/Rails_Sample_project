class ChangeDescColumnToTextFromString < ActiveRecord::Migration[5.1]
  def self.up
    change_column :suppliers, :desc, :text
  end

  def self.down
    change_column :suppliers, :desc, :string
  end
end
