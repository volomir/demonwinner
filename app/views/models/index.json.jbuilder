json.array!(@models) do |model|
  json.extract! model, :painter_id, :title, :image_url
  json.url model_url(model, format: :json)
end
