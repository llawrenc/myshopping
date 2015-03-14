class Suburb < ActiveRecord::Base
  has_many :stores

  validates :suburb, presence: true
  validates :state, presence: true
  validates :post_code, presence: true
end
