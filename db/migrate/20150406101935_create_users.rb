class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
			t.string :lastname
      t.string :billing_address1
      t.string :billing_address2
      t.integer :billing_suburb_id
      t.string :postal_address1
      t.string :postal_address2
      t.integer :postal_suburb_id

      t.timestamps
    end
  end
end
