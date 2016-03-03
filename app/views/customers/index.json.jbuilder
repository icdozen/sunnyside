json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :address, :scope
  json.url customer_url(customer, format: :json)
end
