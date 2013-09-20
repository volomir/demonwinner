json.array!(@competitions) do |competition|
  json.extract! competition, :year, :country, :city
  json.url competition_url(competition, format: :json)
end
