class CreateHomeAddressIsChangeAddressToUser < ActiveRecord::Migration
  def up
  	rename_column :users, :address, :home_address
  end

  def down
  	rename_column :users, :home_address, :address
  end
end
