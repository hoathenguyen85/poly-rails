json.array!(@dogs) do |dog|
  json.extract! dog, :id, :name, :description, :sex, :is_neuter
  json.url dog_url(dog, format: :json)
end
