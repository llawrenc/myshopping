class ItemRenameItemDetailId < ActiveRecord::Migration
  def change
    rename_column :items, :item_detail_id, :itemdetail_id
  end
end
