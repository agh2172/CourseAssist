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
    @users = User.create!(movie_params)
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end
end
