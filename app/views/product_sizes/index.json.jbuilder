json.array!(@product_sizes) do |product_size|
  json.extract! product_size, :product_id, :size_id, :quantity
  json.url product_size_url(product_size, format: :json)
end
