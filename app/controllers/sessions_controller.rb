class SessionsController < ApplicationController

  def logout
    cookies["user_id"] = nil
    cookies["account_type"] = nil
    cookies["current_project"] = nil
    redirect_to "/", :notice => "Thank you for using the Client Connection Portal!"
  end

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["user_id"] = the_user["id"]
        cookies["account_type"] = the_user["account_type"]
        redirect_to "/", :notice => "Welcome to the Client Connection Portal!"
      else
        logger.debug "Welcome!"
        redirect_to "/login", :notice => "Unknown password."
      end
    else
      redirect_to "/login", :notice => "Unknown username."
    end
  end

end
