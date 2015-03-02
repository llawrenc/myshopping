class AddIdToItemStores < ActiveRecord::Migration
  def change
    add_column :item_stores, :id, :primary_key
  end
end
