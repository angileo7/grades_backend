class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :authentication

  def index
    @students = Student.all.includes(:courses)
  end

  def show
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    @student.save
    @student
  end

  def update
    if @student.update(student_params)
      @student
    else
      render json: @student.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @student.destroy
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :last_name)
  end
end