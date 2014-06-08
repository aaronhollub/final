class CommentsController < ApplicationController

  def destroy
    comment = Comment.find_by("id" => params["id"])
    comment.delete
    redirect_to "/", :notice => "Comment Deleted"
  end

  # Receive form submitted from /updates/new
  def create
    user = cookies["user_id"]
    the_project = cookies["current_project"]
    # the_project_id = Project.find_by("id" => the_project)
    Comment.create("summary" => params["summary"], "project_id" => the_project, "user_id" => user)
    redirect_to "/projects", :notice => "Comment Added"
  end

  # Receive form submitted from /updates/edit
  def update
    comment = Comment.find_by("id" => params["id"])
    comment.update("summary" => params["summary"], "project_id" => params["project_id"], "user_id" => "user")
    redirect_to "/projects", :notice => "Comment Updated"
  end

end
