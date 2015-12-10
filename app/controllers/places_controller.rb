class PlacesController < ApplicationController
	
	before_action :authenticate_user!, :only => [:new, :create]


	def index
		@places = Place.order(:name). page params[:page]
	end

	def new
		@places = Place.new
	end	

	def create
		current_user.places.create(place_params)
		redirect_to root_path 

	end

	def show
		@place = Place.find(params[:id])
	end

	def edit
		@place = Place.find(params[:id])
	end

	
	def update
		@place = Place.find(params[:id])
		@place.update_attributes(place_params)
		redirect_to root_path
	end

	def destroy
		@place = Place.find(params[:id])
		@place.destroy
		redirect_to root_path
	end



	private

	def place_params
		params.required(:place).permit(:name, :address, :description)
	end

	def require_login
		unless logged_in?
			flash[:error] = "You Must Be Logged In"
			redirect_to rooth_path # halts cycle
		end
	end


end
