json.array!(@materials) do |material|
  json.extract! material, :product_id, :name
  json.url material_url(material, format: :json)
end
