json.array!(@addresses) do |address|
  json.extract! address, :customer_id, :address1, :address2, :code, :city, :state, :country
  json.url address_url(address, format: :json)
end
