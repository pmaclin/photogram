class PhotosController < ApplicationController

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    @photo = Photo.find(params[:id])

    @photo.caption = params["the_caption"]
    @photo.source = params["the_source"]

    @photo.save
  end

  def create_row
    @photos = Photo.new

    @photos.source = params["the_source"]
    @photos.caption = params["the_caption"]

    @photos.save
  end

  def new_form
  end

  def index
    @list_of_photos = Photo.all
  end

  def show
    @photos = Photo.find_by({ :id => params["id"] })
  end

  def destroy
    @photo = Photo.find_by({ :id => params["id"] })

    @photo.destroy
  end


end
