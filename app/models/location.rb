class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name
  attr_accessible :category_id, :regional_id
  validates :name, :latitude, :longitude, presence: true
  

  has_and_belongs_to_many :users
  belongs_to :category
  belongs_to :regional
end
