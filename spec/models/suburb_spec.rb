require 'rails_helper'

describe Suburb do
  it "has a vaild factory" do
    expect(build( :suburb )).to be_valid
  end

  it "is invalid without a name" do
    suburb = build( :suburb, suburb: nil )
    suburb.valid?
    expect(suburb.errors[:suburb]).to include("can't be blank")
  end

  it "is invalid without a state" do
    suburb = build( :suburb, state: nil )
    suburb.valid?
    expect(suburb.errors[:state]).to include("can't be blank")
  end

  it "is invalid without a post code" do
    suburb = build( :suburb, post_code: nil)
    suburb.valid?
    expect(suburb.errors[:post_code]).to include("can't be blank")
  end
end
