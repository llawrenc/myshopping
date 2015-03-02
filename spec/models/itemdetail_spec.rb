require 'rails_helper'

describe Itemdetail do
  it "has a vaild factory" do
    expect(build(:itemdetail)).to be_valid
  end

  it "is invalid without a description" do
    itemdetail = Itemdetail.new(description: nil)
    itemdetail.valid?
    expect(itemdetail.errors[:description]).to include("can't be blank")
  end

  it "allows two items to share the same detail" do
    create(:item,
      store_id: 1,
      price: 2.5)
    expect(build(:item,
      store_id: 2,
      price: 5)).to be_valid
  end
end
