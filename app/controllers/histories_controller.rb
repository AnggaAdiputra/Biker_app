class HistoriesController < ApplicationController
	before_filter :authenticate_user!
	
def index
	 @histories = History.all
	 @user = current_user
	end
end