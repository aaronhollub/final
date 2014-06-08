class CommentsController < ApplicationController

  def destroy
    comment = Comment.find_by("id" => params["id"])
    comment.delete
    redirect_to "/", :notice => "Comment Deleted"
  end

  # Receive form submitted from /comments/new
  def create
    user = cookies["user_id"]
    the_project = cookies["current_project"]
    # the_project_id = Project.find_by("id" => the_project)
    Comment.create("summary" => params["summary"], "project_id" => the_project, "user_id" => user)
    redirect_to "/projects", :notice => "Comment Added"
  end

  # Receive form submitted from /comments/edit
  def update
    user = cookies["user_id"]
    comment = Comment.find_by("id" => params["id"])
    comment.update("summary" => params["summary"], "project_id" => params["project_id"], "user_id" => user)
    redirect_to "/projects", :notice => "Comment Updated"
  end

end
