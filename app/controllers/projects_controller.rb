class ProjectsController < ApplicationController

  # Try commenting out or removing this code entirely
  # to see what would happen.

  def destroy
    project = Project.find_by("id" => params["id"])
    project.delete
    redirect_to "/projects"
  end

  # Receive form submitted from /project/new
  def create
    Project.create("project_name" => params["name"], "project_address" => params["address"], "summary" => params["project_summary"], "client_name" => params["client_name"])
    redirect_to "/projects"
  end

  # Receive form submitted from /project/edit
  def update
    project = Project.find_by("id" => params["id"])
    project.update("project_name" => params["name"], "project_address" => params["address"], "summary" => params["project_summary"], "client_name" => params["client_name"])
    redirect_to "/projects"
  end

end
