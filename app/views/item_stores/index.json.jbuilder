json.item_stores @item_stores do |item_store|
  json.id item_stores.id
  json.item.image_path item_store.item.image_path
  json.store_id item_stores.store_id
  json.price item_stores.price

  json.items item_store.items do |item|
    json.(item, :description, :price, :image_path)
  end

  json.stores item_store.stores do |store|
    json.(store, :store_name)
  end

  json.url item_stores_url(i, format: :json)
end
