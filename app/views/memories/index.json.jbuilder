json.array!(@memories) do |memory|
  json.extract! memory, :name, :description, :address
  json.url memory_url(memory, format: :json)
end
