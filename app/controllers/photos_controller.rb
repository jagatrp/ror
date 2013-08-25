class PhotosController < ApplicationController
  def index
    @album = Album.find params[:album_id]
    @photo = @album.photos
  end

  def new
  	@album = Album.find params[:album_id]
  	@photo = Photo.new
  end

  def show
    #@album = Album.find params[:album_id]
    @photo = Photo.find params[:id]
  end

  def edit
     @photo = Photo.find params[:id]
  end

   def update
    
    @photo = Photo.find params[:id]
    if @photo.update_attributes
      redirect_to photo_path(@photo), notice: 'Photo Updated'
    else
      render :edit
    end
  end


  def create
  	@album = Album.find params[:album_id]
  	@photo = @album.photos.build(photo_params)
  	if @photo.save
  		redirect_to photo_path(@photo), notice: 'Photo Added'
  	else
  		render :new
  	end

  end

  private
  	def photo_params
  		 params.require(:photo).permit(:caption, :description, :photo, :category_ids=>[])
  	end

end
