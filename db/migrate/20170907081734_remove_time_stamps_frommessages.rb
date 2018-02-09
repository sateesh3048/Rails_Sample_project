class RemoveTimeStampsFrommessages < ActiveRecord::Migration[5.1]
  def change
    remove_timestamps :messages
  end
end
