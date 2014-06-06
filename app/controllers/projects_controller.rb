class ProjectsController < ApplicationController

  def destroy
    project = Project.find_by("id" => params["id"])
    project.delete
    redirect_to "/admin", :notice => "Project Deleted"
  end

  # Receive form submitted from /project/new
  def create
    the_family = Family.find_by("family_name" => params["family_name"])
    the_family_id = the_family["id"]

    Project.create("project_name" => params["name"], "project_address" => params["address"], "summary" => params["project_summary"], "family_id" => the_family_id)
    redirect_to "/admin", :notice => "Project Successfully Added"
  end

  # Receive form submitted from /project/edit
  def update
    the_family = Family.find_by("family_name" => params["family_name"])
    the_family_id = the_family["id"]

    project = Project.find_by("id" => params["id"])
    project.update("project_name" => params["name"], "project_address" => params["address"], "summary" => params["project_summary"], "family_id" => the_family_id)
    redirect_to "/admin", :notice => "Project Updated"
  end

end
