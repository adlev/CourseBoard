class CoursesController < ApplicationController
  # def list
  # 	@course_names = Course.all
  # end
  # def show
  # 	@course_name = Course.find(params[:id])
  # end
  def index
  	@course_names = Course.all
  end
  def show
  	@course_names = Course.find(params[:id])
  end
  def show_instructors
  	@instructors = Instructor.all
  end

end
