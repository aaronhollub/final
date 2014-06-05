class PhotosController < ApplicationController

  def destroy
    photo = Photo.find_by("id" => params["id"])
    photo.delete
    redirect_to "/admin", :notice => "Photo Deleted"
  end

  # Receive form submitted from /photos/new
  def create
    the_project_name = params["project_name"]
    the_project_id = Project.find_by("project_name" => the_project_name)

    Photo.create("photo_url" => params["url"], "project_id" => the_project_id["id"], "caption" => params["comment"])
    redirect_to "/admin", :notice => "Photo Successfully Added"
  end

  # Receive form submitted from /photos/edit
  def update
    photo = Photo.find_by("id" => params["id"])
    the_project_name = params["project_name"]
    the_project_id = Project.find_by("project_name" => the_project_name)

    photo.update("photo_url" => params["url"], "project_id" => the_project_id["id"], "caption" => params["comment"])
    redirect_to "/admin", :notice => "Photo Successfully Edited"
  end

end
