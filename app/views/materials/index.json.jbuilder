json.array!(@materials) do |material|
  json.extract! material, :name, :quality
  json.url material_url(material, format: :json)
end
