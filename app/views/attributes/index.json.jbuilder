json.array!(@attributes) do |attribute|
  json.extract! attribute, :id, :attribute_id, :attribute_type, :name, :sex, :is_neuter
  json.url attribute_url(attribute, format: :json)
end
