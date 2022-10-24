class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :authentication

  def index
    @courses = Course.all.includes(:students)
  end

  def show
    render json: @course
  end

  def edit
  end

  def create
    @course = Course.new(course_params)
    @course.save
    @course
  end

  def update
    if @course.update(course_params)
      @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @course.destroy
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name)
  end
end