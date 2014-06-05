class GanttsController < ApplicationController

  def destroy
    gantt = Gantt.find_by("id" => params["id"])
    gantt.delete
    redirect_to "/admin", :notice => "Chart Deleted"
  end

  # Receive form submitted from /gantts/new
  def create
    the_project_name = params["project_name"]
    the_project_id = Project.find_by("project_name" => the_project_name)

    Gantt.create("gantt_url" => params["url"], "project_id" => the_project_id["id"])
    redirect_to "/admin", :notice => "Gantt Chart Successfully Added"
  end

  # Receive form submitted from /gantts/edit
  def update
    gantt = Gantt.find_by("id" => params["id"])
    the_project_name = params["project_name"]
    the_project_id = Project.find_by("project_name" => the_project_name)

    gantt.update("gantt_url" => params["url"], "project_id" => the_project_id["id"])
    redirect_to "/admin", :notice => "Chart Updated"
  end

end
