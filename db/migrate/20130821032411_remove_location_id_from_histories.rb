class RemoveLocationIdFromHistories < ActiveRecord::Migration
  def up
  	remove_column :histories, :location_id
  end

  def down
  	add_column :histories, :location_id, :integer
  end
end
