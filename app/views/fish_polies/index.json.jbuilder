json.array!(@fish_polies) do |fish_poly|
  json.extract! fish_poly, :id
  json.url fish_poly_url(fish_poly, format: :json)
end
