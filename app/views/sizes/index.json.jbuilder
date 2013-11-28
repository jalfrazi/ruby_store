json.array!(@sizes) do |size|
  json.extract! size, :product_id, :name, :country, :in, :mm
  json.url size_url(size, format: :json)
end
