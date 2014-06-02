class UpdatesController < ApplicationController

  def destroy
    update = Update.find_by("id" => params["id"])
    update.delete
    redirect_to "/", :notice => "Comment Deleted"
  end

  # Receive form submitted from /updates/new
  def create
    user = cookies["user_id"]
    client = coolkies["client_name"]
    Update.create("summary" => params["summary"], "project_name" => params["project_name"], "user_id" => user)
    redirect_to "/projects", :notice => "Comment Added"
  end

  # Receive form submitted from /updates/edit
  def update
    update = Update.find_by("id" => params["id"])
    update.update("summary" => params["summary"], "project_name" => params["project_name"], "user_id" => "user")
    redirect_to "/projects", :notice => "Comment Updated"
  end

end
