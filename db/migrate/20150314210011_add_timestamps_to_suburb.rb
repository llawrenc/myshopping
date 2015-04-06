class AddTimestampsToSuburb < ActiveRecord::Migration
  def change
    add_column(:suburbs, :created_at, :datetime)
    add_column(:suburbs, :updated_at, :datetime)
  end
end
