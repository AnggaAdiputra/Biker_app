class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :type
  validates :name, :latitude, :longitude, :type, presence: true
end
