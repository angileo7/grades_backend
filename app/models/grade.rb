class Grade < ApplicationRecord
  before_save :calculate_result
  belongs_to :course

  def calculate_result
    result = self.rate > 5 ? "passed" : "failed"
    self.result = result
  end
end
