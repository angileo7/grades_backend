class GradesController < ApplicationController
  before_action :authentication

  def create
    @course = Course.find(params[:course_id])
    exist_grade = @course.grades.filter { |grade| grade.title == params[:title]
    }
    if(exist_grade.count === 0)
      @grade = @course.grades.create(params[:grade].permit(:rate, :title))
    end
  end

  def edit
    @grade = Grade.find(params[:id])
  end

  def show
    @grade = Grade.find(params[:id])
  end

  def update
    @grade = Grade.find(params[:id])
    if @grade.update(grade_params)
      @grade
    else
      render json: @grade.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @course = Post.find(params[:post_id])
    @comment = @course.grades.find(params[:id])
    @comment.destroy
    render json: { status: :ok }
  end

  def grade_params
    params.require(:grade).permit(:rate, :result, :id)
  end
end