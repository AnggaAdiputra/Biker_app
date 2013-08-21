class RoutesController < ApplicationController

	def index
		@routes = Route.all
	end

	def show
		@route = Route.find(params[:id])
	end

	def new
		@route = Route.new
	end

	def create
		@route = Route.new(params[:route])
		if @route.save
			redirect_to route_path(@route)
		else
			render :new
		end
	end

	def edit
		@route = Route.find(params[:id])
	end

	def update
		@route = Route.find(params[:id])
		if @route.update_attributes(params[:route])
			redirect_to route_path(@route)
		else
			render :edit
		end
	end

	def destroy
		@route = Route.find(params[:id])
	  @route.destroy
	  redirect_to route_path
	end


end