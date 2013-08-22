class History < ActiveRecord::Base
  attr_accessible :route_id, :user_id, :image, :user
  belongs_to :route
  belongs_to :user

end