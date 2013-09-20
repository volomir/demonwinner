json.array!(@awards) do |award|
  json.extract! award, :competition_id, :category_id, :model_id, :type
  json.url award_url(award, format: :json)
end
