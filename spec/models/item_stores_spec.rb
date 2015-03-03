require 'rails_helper'

describe ItemStore do
  it "has a valid factory" do
    expect(build(:store)).to be_valid
  end

  it "is invalid without an item id" do
    itemstore = build(:item_store, item_id: nil)
    itemstore.valid?
    expect(itemstore.errors[:item_id]).to include("can't be blank")
  end

  it "is invalid without a store id" do
    itemstore = build(:item_store, store_id: nil)
    itemstore.valid?
    expect(itemstore.errors[:store_id]).to include("can't be blank")
  end
end
