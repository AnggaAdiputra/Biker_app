class AddPrecisionToLatitudeLongitude < ActiveRecord::Migration
  def up
  	change_column :locations, :latitude, :decimal, precision: 30, scale: 20
  	change_column :locations, :longitude, :decimal, precision: 30, scale: 20
  end
  def down
  	change_column :locations, :latitude
  	change_column :locations, :longitude
  end
end
