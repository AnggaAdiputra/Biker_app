class ChangeLongitudeLatitude < ActiveRecord::Migration
  def up
  	change_column :locations, :latitude, :decimal
  	change_column :locations, :longitude, :decimal
  end

  def down
    change_column :locations, :latitude, :string
  	change_column :locations, :longitude, :string
  end
end
