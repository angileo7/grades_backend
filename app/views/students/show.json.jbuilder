json.student do
  json.id @student.id
  json.name @student.name
  json.last_name @student.last_name
  json.created_at @student.created_at
  json.courses do
    json.array! @student.courses do |course|
      json.id course.id
      json.name course.name
      json.grades course.grades, :result, :rate, :title
    end
  end
end