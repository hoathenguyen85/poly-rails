json.array!(@fish) do |fish|
  json.extract! fish, :id, :name, :description, :sex, :is_neuter
  json.url fish_url(fish, format: :json)
end
