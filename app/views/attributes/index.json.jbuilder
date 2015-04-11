json.array!(@attributes) do |attribute|
  json.extract! attribute, :id, :attributable_id, :attributable_type, :name, :sex, :is_neuter
  json.url attribute_url(attribute, format: :json)
end
