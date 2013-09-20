json.array!(@painters) do |painter|
  json.extract! painter, :name, :surname, :nickname, :nationality
  json.url painter_url(painter, format: :json)
end
