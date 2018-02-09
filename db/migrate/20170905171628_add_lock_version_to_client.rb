class AddLockVersionToClient < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :lock_version, :integer, default: 0
  end
end
