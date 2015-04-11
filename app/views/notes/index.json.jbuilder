json.array!(@notes) do |note|
  json.extract! note, :id, :describable_id, :describable_type, :description
  json.url note_url(note, format: :json)
end
