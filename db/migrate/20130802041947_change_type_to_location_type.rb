class ChangeTypeToLocationType < ActiveRecord::Migration
  def up
  	rename_column :locations, :type, :location_type
  end

  def down
  	rename_column :locations, :location_type, :type
  end
end
