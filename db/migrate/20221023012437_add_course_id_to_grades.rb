class AddCourseIdToGrades < ActiveRecord::Migration[6.0]
  def change
    add_column :grades, :course_id, :integer
  end
end
