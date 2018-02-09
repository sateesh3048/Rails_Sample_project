class DropTableRockStars < ActiveRecord::Migration[5.1]
  def change
    drop_table :rock_stars
  end
end
