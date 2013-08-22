class PhotosController < ApplicationController
	def index
		@user = User.find(params[:user_id])
		@routes = @user.routes
	end
	def show
	end
end
