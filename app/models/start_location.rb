class StartLocation < Location 
	belongs_to :route, class_name: "Route", foreign_key: "start_location_id"
end