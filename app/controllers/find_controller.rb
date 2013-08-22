class FindController < ApplicationController
		before_filter :authenticate_user!

		def index
			if params[:name]
				@users = User.where('id <> ? and name like ?' , current_user.id, "%#{params[:name]}%");
		end 
	end
end