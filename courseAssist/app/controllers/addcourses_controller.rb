class AddcoursesController < ApplicationController
  def show
    id = params[:id] # retrieve movie ID from URI route
    @user = User.find(id) # look up movie by unique ID
  end

  def show
  end

  def new
    #creates new user
    #redirect_to addcourses
    # if session is not empty
  end

  def create
    #@users = User.create!(user_params)
    #@user = User.find params[:id]
    #flash[:notice] = "#{@user} was successfully created."
    User.create!(user_params)
    redirect_to addcourses_path
  end

end
