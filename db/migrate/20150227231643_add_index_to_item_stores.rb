class AddIndexToItemStores < ActiveRecord::Migration
  def change
    add_index :item_stores, [ :item_id, :store_id ], unique: true
  end
end
