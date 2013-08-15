class History < ActiveRecord::Base
  attr_accessible :location_id, :user_id, :image
  belongs_to :location
  belongs_to :user

end