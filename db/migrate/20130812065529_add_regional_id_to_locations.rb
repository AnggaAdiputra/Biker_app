class AddRegionalIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :regional_id, :integer
  end
end
