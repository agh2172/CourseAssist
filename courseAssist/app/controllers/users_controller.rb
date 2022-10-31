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
end
