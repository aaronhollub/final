class SessionsController < ApplicationController

  def authenticate
    the_user = User.find_by("username" => params["username"])
    if the_user != nil
      if the_user["password"] == params["password"]
        cookies["user_id"] = the_user["id"]
        redirect_to "/", :notice => "Welcome to the Client Connection Portal"
      else
        logger.debug "Wazzzzup!"
        redirect_to "/login", :notice => "Unknown password."
      end
    else
      redirect_to "/login", :notice => "Unknown username."
    end
  end

end
