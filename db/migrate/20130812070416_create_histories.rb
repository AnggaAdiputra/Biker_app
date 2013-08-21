class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
    	t.belongs_to :location
    	t.belongs_to :user
    	t.string :image

      t.timestamps
    end
  end
end
