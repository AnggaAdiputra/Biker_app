class AddRoutesToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :route_id, :integer
  end
end
