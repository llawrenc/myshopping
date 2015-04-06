class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :list_detail_id
      t.integer :user_id

      t.timestamps
    end
  end
end
