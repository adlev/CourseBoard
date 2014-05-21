class CoursesController < ApplicationController
  def index
  	@course_names = Course.all
  end
end
