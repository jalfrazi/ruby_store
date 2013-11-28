json.array!(@orders) do |order|
  json.extract! order, :customer_id, :discount, :tax, :shippingFee, :total, :payment_id, :status, :date
  json.url order_url(order, format: :json)
end
