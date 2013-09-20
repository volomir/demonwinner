json.array!(@photos) do |photo|
  json.extract! photo, :model_id, :order, :file
  json.url photo_url(photo, format: :json)
end
