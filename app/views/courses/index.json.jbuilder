json.array! @courses do |item|
  json.id item.id
  json.name item.name
  json.created_at item.created_at
  json.students do
    json.array! item.students, :name, :last_name
    end
end