class AddPriceToItemStores < ActiveRecord::Migration
  def change
    add_column :item_stores, :price, :decimal
  end
end
