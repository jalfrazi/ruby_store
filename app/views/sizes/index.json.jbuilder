json.array!(@sizes) do |size|
  json.extract! size, :type_id, :name, :us, :uk, :cn, :ind, :it, :inch, :mm
  json.url size_url(size, format: :json)
end
