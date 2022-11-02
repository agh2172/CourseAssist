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
    User.create!(user_params)
    redirect_to addcourses_path
  end

  private

  def user_params
    params.require(:user).permit(:first, :last, :school, :year, :major, :minor)
  end
end
