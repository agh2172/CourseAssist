class AddcoursesController < ApplicationController

  def index
    @uni = session[:uni]
  end

  def show
    redirect_to action: "new"
  end

  def new
    #creates new user/course pairing
    #redirect_to addcourses
  end

  def create
    @addcourse  = Addcourse.create!(uni: session[:uni], 
                                    course: addcourse_params[:course], 
                                    semester: addcourse_params[:semester], 
                                    year: addcourse_params[:year])
    redirect_to addcourses_path
  end

  def addcourse_params
    params.require(:addcourse).permit(:course, :semester, :year)
  end

end
