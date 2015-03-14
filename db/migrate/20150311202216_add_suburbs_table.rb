class AddSuburbsTable < ActiveRecord::Migration
  def change
    create_table :suburbs do |s|
      s.string :suburb
      s.string :state
      s.integer :post_code
      s.index :suburb
      s.index :post_code
    end
  end
end
