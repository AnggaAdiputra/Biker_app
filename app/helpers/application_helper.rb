module ApplicationHelper
	def distance_to(start_location, end_location)
		lat1, long1 = start_location.latitude, start_location.longitude
		lat2, long2 = end_location.latitude, end_location.longitude


		theta = long1 - long2
		distance = (Math.sin(deg2rad(lat1))) * Math.sin(deg2rad(lat2)) +
							 (Math.cos(deg2rad(lat1))) * Math.cos(deg2rad(lat2)) *
							 Math.cos(deg2rad(theta))

		distance = Math.acos(distance)
		distance = rad2deg(distance)
		distance = distance * 60 * 1.1515
		(distance * 1.609344).round(3)
	end

	def deg2rad(deg)
		deg * Math::PI / 180
	end

	def rad2deg(rad)
		rad * 180 / Math::PI
	end
end
