json.array!(@notes) do |note|
  json.extract! note, :id, :describe_id, :describe_type, :description
  json.url note_url(note, format: :json)
end
