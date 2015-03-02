class RemoveIndexFromItemStores < ActiveRecord::Migration
  def change
    remove_index( :item_stores, :name => 'index_items_stores_on_item_id_and_store_id' )
  end
end
