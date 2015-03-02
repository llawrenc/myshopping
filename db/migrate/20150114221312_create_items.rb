class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :store_id
      t.integer :itemdetail_id
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
