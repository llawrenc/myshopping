require 'rails_helper'

describe Store do
  it "has a vaild factory" do
    expect(build(:store)).to be_valid
  end

  it "is invalid without a name" do
    store = build(:store, store_name: nil)
    store.valid?
    expect(store.errors[:store_name]).to include("can't be blank")
  end
end
