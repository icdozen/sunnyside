json.array!(@searches) do |search|
  json.extract! search, :id, :customer_id, :address, :scope
  json.url search_url(search, format: :json)
end
