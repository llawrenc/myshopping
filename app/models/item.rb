class Item < ActiveRecord::Base
  belongs_to :itemdetail

  accepts_nested_attributes_for :itemdetail
end
