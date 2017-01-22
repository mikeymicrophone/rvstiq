class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end
  
  def show
    @photo = Photo.find params[:id]
  end
  
  def new
    @photo = Photo.new
  end
  
  def create
    @photo = Photo.create photo_params
    redirect_to :action => :index
  end
  
  def edit
    @photo = Photo.find params[:id]
  end
  
  def update
    @photo = Photo.find params[:id]
    @photo.update_attributes photo_params
    redirect_to @photo
  end
  
  def destroy
    @photo = Photo.find params[:id]
    @photo.destroy
    redirect_to :action => :index
  end
  
  protected
  
  def photo_params
    params.require(:photo).permit(:image, :job_id)
  end
end
