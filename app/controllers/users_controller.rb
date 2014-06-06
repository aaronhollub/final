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

    the_family = Family.find_by("family_name" => params["family_name"])
    the_family_id = the_family["id"]

    if existing_user == nil
      User.create("username" => params["username"],
                  "password" => params["password"],
                  "name" => params["name"],
                  "account_type" => params["account_type"],
                  "family_id" => the_family_id,
                  )

      redirect_to "/", :notice => "Profile Successfully Created. Please Inform The Client"
    else
      @message = "That username is taken.  Please try again."
      render "new"
    end
  end

  def update
    existing_user = User.find_by("username" => params["username"])
    current_user = User.find_by("id" => params["id"])

    if existing_user == nil
      the_user = User.find_by(params["id"])
      the_user.update("username" => params["username"],
                      "password" => params["password"],
                      "name" => params["name"]
                      )
      cookies["user_id"] = the_user["id"]

      redirect_to '/', :notice => "Profile Successfully Updated."

    elsif existing_user["username"] == current_user["username"]

      the_user = User.find_by(params["id"])
      the_user.update("username" => params["username"],
                      "password" => params["password"],
                      "name" => params["name"]
                      )
      cookies["user_id"] = the_user["id"]

      redirect_to '/', :notice => "Profile Successfully Updated."

    else

      @message = "That username is taken.  Please try again."

      render "edit"

    end
  end
end
