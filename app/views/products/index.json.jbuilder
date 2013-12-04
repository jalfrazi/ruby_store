json.array!(@products) do |product|
  json.extract! product, :name, :type_id, :description, :imageUrl, :price, :discount, :stock, :status
  json.url product_url(product, format: :json)
end
