class TheatersController < ApplicationController
	before_action :authenticate_user!
	def index
		@theaters= Theater.all
	end
	def new
		@theater= Theater.new
	end
	def create
		@theater=Theater.new(theater_params)
		if @theater.save
			redirect_to theaters_path
		else
			render new_theater.path
		end
	end
	private
	def theater_params
		params[:theater].permit(:name,:time,:movie_id)
	end
end
