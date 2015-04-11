json.array!(@cat_polies) do |cat_poly|
  json.extract! cat_poly, :id, :dog_poly, :fish_poly
  json.url cat_poly_url(cat_poly, format: :json)
end
