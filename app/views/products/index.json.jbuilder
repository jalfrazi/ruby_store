json.array!(@products) do |product|
  json.extract! product, :name, :description, :price, :discount, :stock, :status
  json.url product_url(product, format: :json)
end