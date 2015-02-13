json.array!(@neighborhoods) do |neighborhood|
  json.extract! neighborhood, :id, :name, :walk_score, :city_id
  json.url neighborhood_url(neighborhood, format: :json)
end
