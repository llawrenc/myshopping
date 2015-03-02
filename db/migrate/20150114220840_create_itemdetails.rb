class CreateItemdetails < ActiveRecord::Migration
  def change
    create_table :itemdetails do |t|
      t.string :description
      t.integer :barcode

      t.timestamps
    end
  end
end
