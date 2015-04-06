json.array!(@suburbs) do |suburb|
  json.extract! suburb, :id, :locality, :state, :post_code
  json.url suburb_url(suburb, format: :json)
end
