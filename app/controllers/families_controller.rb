class FamiliesController < ApplicationController

  def show
    family = Family.find_by("id" => params["id"])
    family.delete
    redirect_to "/admin", :notice => "Family Account Deleted"
  end

  def create
    existing_family = Family.find_by("family_name" => params["family_name"])

    if existing_family == nil
      Family.create("family_name" => params["family_name"])

      redirect_to "/", :notice => "Family successfully created. You May Now Create A New User Assigned to This Family"
    else
      @message = "That Family Name is Taken.  Please Try Again."
      render "new"
    end
  end

  def update
    existing_family = Family.find_by("family_name" => params["family_name"])

    if existing_family == nil
      the_family = Family.find_by(params["id"])
      the_family.update("family_name" => params["family_name"])

      redirect_to '/', :notice => "Profile successfully updated."
    else
      @message = "That Family Name is Taken.  Please Try Again."
      render "new"
    end
  end

end
