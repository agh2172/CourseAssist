class UsersController < ApplicationController
  def index
  end
  def show
    redirect_to action: "new"
  end

  def new
    #creates new user
    #redirect_to addcourses
  end

  def create
    #@users = User.create!(user_params)
    #@user = User.find params[:id]
    #flash[:notice] = "#{@user} was successfully created."
    redirect_to users_path
  end
end
