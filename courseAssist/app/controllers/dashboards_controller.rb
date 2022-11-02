class DashboardsController < ApplicationController
  def index
    puts @uni
    puts "uni above ^^^"
    @uni = session[:uni]
  end

  def show
    puts @uni
    puts "uni above ^^^"
    @uni = session[:uni]
  end

  def create
    @user = user_params["uni"]
    puts @user
    session[:uni] = @user
    redirect_to dashboards_path
  end

  private
  # Making "internal" methods private is not required, but is a common practice.
  # This helps make clear which methods respond to requests, and which ones do not.
  def user_params
    params.require(:user).permit(:uni)
  end
end
