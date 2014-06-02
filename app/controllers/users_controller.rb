class UsersController < ApplicationController

  def show
    @user = User.find_by("id" => params["id"])

    logger.debug @user["id"].inspect
    logger.debug cookies["user_id"].inspect

    if (@user["id"] != cookies["user_id"].to_i)
      redirect_to "/", :notice => "Access Denied!"
    end

  end

  def create
    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil
      User.create("username" => params["username"],
                  "password" => params["password"],
                  "name" => params["name"])

      redirect_to "/", :notice => "Profile successfully created. Please log in!"
    else
      @message = "That username is taken.  Please try again."
      render "new"
    end
  end

  def update
    existing_user = User.find_by("username" => params["username"])

    if existing_user == nil
      the_user = User.find_by(params["id"])
      the_user.update("username" => params["username"],
                  "password" => params["password"],
                  "name" => params["name"])
      cookies["user_id"] = the_user["id"]

      redirect_to '/', :notice => "Profile successfully updated."
    else
      @message = "That username is taken.  Please try again."
      render "new"
    end
  end
end
