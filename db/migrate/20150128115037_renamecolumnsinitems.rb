class Renamecolumnsinitems < ActiveRecord::Migration
  def change
    rename_column :items, :storeid, :store_id
    rename_column :items, :itemdetailid, :item_detail_id
  end
end
