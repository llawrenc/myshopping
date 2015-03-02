class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :store_name
      t.string :address1
      t.string :address2
      t.integer :suburb_id
      t.decimal :lat, precision: 10, scale: 8
      t.decimal :lng, precision: 11, scale: 8

      t.timestamps
    end
  end
end
