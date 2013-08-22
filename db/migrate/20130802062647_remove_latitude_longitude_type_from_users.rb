class RemoveLatitudeLongitudeTypeFromUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :latitude
  	remove_column :users, :longitude 
  	remove_column :users, :type 
  end

  def down
  	add_column :users, :latidude
  	add_column :users, :longitude
  	add_column :users, :type
  end
end
