class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :start_location_id
      t.integer :end_location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
