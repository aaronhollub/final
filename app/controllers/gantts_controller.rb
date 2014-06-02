class GanttsController < ApplicationController

  def destroy
    gantt = Gantt.find_by("id" => params["id"])
    gantt.delete
    redirect_to "/admin"
  end

  # Receive form submitted from /gantts/new
  def create
    Gantt.create("gantt_url" => params["url"], "project_name" => params["project_name"])
    redirect_to "/admin"
  end

  # Receive form submitted from /gantts/edit
  def update
    gantt = Gantt.find_by("id" => params["id"])
    gantt.update("gantt_url" => params["url"], "project_name" => params["project_name"])
    redirect_to "/admin"
  end

end
