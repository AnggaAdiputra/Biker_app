class Route < ActiveRecord::Base
  attr_accessible :name, :start_location_id, :end_location_id
  validates :name, presence: true
  belongs_to :user

  belongs_to :start_location , class_name: 'StartLocation', foreign_key: :start_location_id
  belongs_to :end_location , class_name: 'EndLocation', foreign_key: :end_location_id
end
