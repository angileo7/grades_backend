json.array! @students do |item|
  json.id item.id
  json.name item.name
  json.last_name item.last_name
  json.created_at item.created_at
  json.courses do
    json.array! item.courses do |course|
      json.name course.name
      json.grades course.grades, :result, :rate, :title, :id
    end
  end
end