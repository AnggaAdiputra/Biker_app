class AddFullNameAddressContactGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :address, :string
    add_column :users, :gender, :string
    add_column :users, :contact, :string
  end
end
