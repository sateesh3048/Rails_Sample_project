class ChangeIsActiveToTrueInAccountsTable < ActiveRecord::Migration[5.1]
  def change
    change_column_default :accounts, :is_active, from: false, to: true
  end
end
