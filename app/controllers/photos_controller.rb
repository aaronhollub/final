class PhotosController < ApplicationController

  def destroy
    photo = Photo.find_by("id" => params["id"])
    photo.delete
    redirect_to "/admin", :notice => "Photo Deleted"
  end

  # Receive form submitted from /photos/new
  def create
    Photo.create("photo_url" => params["url"], "project_name" => params["project_name"], "caption" => params["comment"])
    redirect_to "/admin", :notice => "Photo Successfully Added"
  end

  # Receive form submitted from /photos/edit
  def update
    photo = Photo.find_by("id" => params["id"])
    photo.update("photo_url" => params["url"], "project_name" => params["project_name"], "caption" => params["comment"])
    redirect_to "/admin", :notice => "Photo Successfully Edited"
  end

end
