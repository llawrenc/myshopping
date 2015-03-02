class Store < ActiveRecord::Base
  has_many :item_stores, foreign_key: "store_id"
  has_many :items, :through => :item_stores
  accepts_nested_attributes_for :items
  accepts_nested_attributes_for :item_stores

  validates :store_name, presence: true
end
