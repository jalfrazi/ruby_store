json.array!(@categories) do |category|
  json.extract! category, :name, :occasion, :age
  json.url category_url(category, format: :json)
end
