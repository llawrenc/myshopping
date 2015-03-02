class CreateItemsStores < ActiveRecord::Migration
  def change
    create_table :items_stores, :id => false do |t|
      t.references :item, null: false
      t.references :store, null: false
      t.index [:item_id, :store_id], unique: true
    end
  end
end
