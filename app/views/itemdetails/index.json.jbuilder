json.array!(@itemdetails) do |itemdetail|
  json.extract! itemdetail, :id, :description, :barcode
  json.url itemdetail_url(itemdetail, format: :json)
end
