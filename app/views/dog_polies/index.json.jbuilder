json.array!(@dog_polies) do |dog_poly|
  json.extract! dog_poly, :id
  json.url dog_poly_url(dog_poly, format: :json)
end
