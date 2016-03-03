json.array!(@contractors) do |contractor|
  json.extract! contractor, :id, :name, :address, :scope
  json.url contractor_url(contractor, format: :json)
end
