json.array!(@types) do |type|
  json.extract! type, :product_id, :name
  json.url type_url(type, format: :json)
end
