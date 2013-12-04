json.array!(@product_materials) do |product_material|
  json.extract! product_material, :product_id, :material_id, :g, :oz
  json.url product_material_url(product_material, format: :json)
end
