class DropItemDetailsTable < ActiveRecord::Migration
  def change
    drop_table :itemdetails
  end
end
