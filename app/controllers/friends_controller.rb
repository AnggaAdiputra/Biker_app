class FriendsController < ApplicationController
	before_filter :authenticate_user!

	def index
		@user = current_user
		@friends = @user.friends
	end

	def create
		@user = current_user
		@other = User.find(params[:id])
		@user.invite @other
		redirect_to params[:redirect_to].to_s
	end

	def update
		@user = current_user
		@other = User.find(params[:id])
		@user.approve @other
		redirect_to requests_friends_path
	end

	def destroy
		@user = current_user
		@other = User.find(params[:id])
		@user.remove_friendship @other
		redirect_to params[:redirect_to].to_s
	end

	def requests

	end
end
