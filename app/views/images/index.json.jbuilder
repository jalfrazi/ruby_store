json.array!(@images) do |image|
  json.extract! image, :product_id, :name, :url
  json.url image_url(image, format: :json)
end
