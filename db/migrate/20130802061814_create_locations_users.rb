class CreateLocationsUsers < ActiveRecord::Migration
  def up
  	create_table :locations_users do |t|
  		t.belongs_to :location
  		t.belongs_to :user
  	end
  end

  def down
  	drop_table :locations_users
  end
end
