class Renamecolumnsinstores < ActiveRecord::Migration
  def change
    rename_column :stores, :StoreName, :store_name
    rename_column :stores, :Address1, :address1
    rename_column :stores, :Address2, :address2
    rename_column :stores, :SuburbID, :suburb_id
    rename_column :stores, :Lat, :lat
    rename_column :stores, :Lng, :lng
  end
end
