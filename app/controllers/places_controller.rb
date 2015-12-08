class PlacesController < ApplicationController
	def index
		@places = Place.order(:name). page params[:page]
	end

	def new
		@places = Place.new
	end	

	def create
		Place.create(place_params)
		redirect_to root_path 

	end


	private

	def place_params
		params.required(:place).permit(:name, :address, :description)
	end

end
