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
    @user  = User.create!(user_params)
    session[:uni] = @user.uni
    redirect_to addcourses_path
  end

  private

  def user_params
    params.require(:user).permit(:first, :last, :uni, :school, :year, :major, :minor)
  end
end
