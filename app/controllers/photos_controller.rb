class PhotosController < ApplicationController
  def index
    @photos = Photos.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create(post_params)
    redirect_to photos_path
  end

  def post_params
    params.require(:post).permit(:image, :caption)
  end

end
