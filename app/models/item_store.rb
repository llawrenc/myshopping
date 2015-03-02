class ItemStore < ActiveRecord::Base
  validates :item_id, :store_id, :presence => true

  belongs_to :item
  belongs_to :store
end
