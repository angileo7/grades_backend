class Course < ApplicationRecord
  has_many :course_assignments, dependent: :destroy
  has_many :students, through: :course_assignments
  has_many :grades, dependent: :destroy
end
