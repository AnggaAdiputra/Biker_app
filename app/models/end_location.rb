class EndLocation < Location
	belongs_to :route, class_name: "Route", foreign_key: "end_location_id"
end