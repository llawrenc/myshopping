class Item < ActiveRecord::Base
  has_many :item_stores
  has_many :stores, through: :item_stores

  accepts_nested_attributes_for :item_stores
  accepts_nested_attributes_for :stores
end
