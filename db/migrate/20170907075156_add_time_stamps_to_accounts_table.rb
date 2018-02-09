class AddTimeStampsToAccountsTable < ActiveRecord::Migration[5.1]
  def change
    add_timestamps :accounts, null: false
  end
end
