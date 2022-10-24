class Student < ApplicationRecord
  has_many :course_assignments, dependent: :destroy
  has_many :courses, through: :course_assignments
end
