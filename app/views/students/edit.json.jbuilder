json.student do
  json.id @student.id
  json.name @student.name
  json.last_name @student.last_name
  json.created_at @student.created_at
end