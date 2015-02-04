class PhotosController < ApplicationController

  def edit_form
    @photos = Photo.find_by({ :id => params["id"] })
  end

  def update_row
    # @photos = Photo.find_by({ :id => params["id"] })

    # @photo.source = params["the_source"]
    # @photo.caption = params["the_caption"]

    # @photo.save
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
