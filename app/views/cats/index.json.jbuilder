json.array!(@cats) do |cat|
  json.extract! cat, :id, :dog, :fish, :name, :description, :sex, :is_neuter
  json.url cat_url(cat, format: :json)
end
