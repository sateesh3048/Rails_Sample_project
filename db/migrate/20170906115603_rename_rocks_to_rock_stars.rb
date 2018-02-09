class RenameRocksToRockStars < ActiveRecord::Migration[5.1]
  def change
    rename_table :rocks, :rock_stars
  end
end
