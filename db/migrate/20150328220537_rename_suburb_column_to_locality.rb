class RenameSuburbColumnToLocality < ActiveRecord::Migration
  def change
	rename_column :suburbs, :suburb, :locality
  end
end
