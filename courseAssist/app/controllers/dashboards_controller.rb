class DashboardsController < ApplicationController
  def index
    #puts @uni
    #puts "uni above ^^^"
    @uni = session[:uni]
  end

  def show
    #puts @uni
    #puts "uni above ^^^"
    @uni = session[:uni]
    @user = User.find_by(uni: @uni)
    #validate if user exists
    @min_reqs = "NA"
    if @user
      #puts @user
      #puts "Valid user"
      #check if user has a minor
      if (not @user.minor.nil?)
        if(@user.minor == "None")
          #No minor
          @min_reqs = "NA"
        elsif(@user.minor == "Computer Science")
          #CS Minor
          @min_reqs = "COMS W1004, COMS W3134, COMS W3157, COMS W3203, COMS W3261, CSEE W3827, COMS W3251"
        elsif(@user.minor == "Economics")
          #Econ minor
          @min_reqs = "ECON UN1105, ECON UN3211, ECON UN3213, ECON UN3412, 2x Approved Economics Electives"
        end
      end
      #check user school
      if (@user.school == "SEAS")
        @reqs = "One year physics, CHEM CC1403, ENGI E1102, ENGI E1006, Phys/Chem Lab, ENGL CC1010,
         2 Core Humanities, HUMA UN1121 or HUMA UN1123, Econ UN1105, 9 Non-tech points"
         if (@user.major == "Computer Science")
           @maj_reqs = "COMS W1004, COMS W3134, COMS W3157, COMS W3203, COMS W3251, COMS W3261, CSEE W3827, COMS W4115, COMS W4118, CSEE W4119, 2xAny COMS W41xx, 2xAny COMS W48xx"
         else
           @maj_reqs = "None left!"
         end
      else
        @reqs = "HUMA CC1001, HUMA CC1002, COCI CC1101, COCI CC1102, HUMA UN1121, HUMA UN1123,
         SCNC CC1000, ENGL CC1010, Foriegn lang., Global core, SCNC CC1000, Physical Education"
         if (@user.major == "Computer Science")
           @maj_reqs = "COMS W1004, COMS W3134, COMS W3157, COMS W3203, COMS W3251, COMS W3261, CSEE W3827, COMS W4115, COMS W4118, CSEE W4119, 2xAny COMS W41xx, 2xAny COMS W48xx"
         elsif (@user.major == "Economics")
           @maj_reqs = "MATH UN1101, MATH UN1102, MATH UN1201, MATH UN1205, STAT UN1201, UN1105, UN3211, UN3213, UN3412, 5x 3000/4000 Electives"
         else
           @maj_reqs = "None left!"
         end
      end
    else
      flash[:notice] = "User not found. Please sign up first."
      redirect_to root_path
    end
  end

  def create
    @user = user_params["uni"]
    #puts @user
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
