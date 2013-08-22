class MainController < ApplicationController
	before_filter :authenticate_user!

	def index 
		@user = current_user
		@friends = @user.friends
		@histories = History.where('user_id in(?)', @friends.map(&:id).append(@user.id)).order('created_At DESC')
	end

	def show
	end
	
end