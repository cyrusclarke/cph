class PhotosController < ApplicationController
	before_action :authenticate_user!
	def create
		@place = Place.find(params[:place_id])
		@place.photos.create(photo_params)
		redirect_to place_path(@place)
	end


	def destroy
		@place = Place.find(params[:place_id])
		@place.photos.destroy(photo_params)
		redirect_to place_path(@place)

	private
	def photo_params
		params.require(:photo).permit(:photo_id, :caption, :picture)
	end
end
