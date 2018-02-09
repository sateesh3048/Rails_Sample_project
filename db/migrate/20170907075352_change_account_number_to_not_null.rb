class ChangeAccountNumberToNotNull < ActiveRecord::Migration[5.1]
  def change
    change_column_null :accounts, :account_number, false 
  end
end
