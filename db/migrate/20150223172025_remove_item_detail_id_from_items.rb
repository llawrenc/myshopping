class RemoveItemDetailIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :itemdetail_id, :integer
  end
end
