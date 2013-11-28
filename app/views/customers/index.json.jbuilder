json.array!(@customers) do |customer|
  json.extract! customer, :email, :password, :firstName, :lastName, :phone
  json.url customer_url(customer, format: :json)
end
