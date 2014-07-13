json.array!(@comps) do |comp|
  json.extract! comp, :id, :name, :date, :address, :city, :state, :price
  json.url comp_url(comp, format: :json)
end
