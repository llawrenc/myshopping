class NewItemsTable < ActiveRecord::Migration
  def change
    add_column :items, :description, :string
    add_column :items, :image_path, :string
    add_column :items, :barcode, :integer
    remove_column :items, :store_id
    add_index :items, :description
  end
end
