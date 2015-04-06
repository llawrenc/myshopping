require 'rails_helper'

describe Suburb do
  it "has a vaild factory" do
    expect(build( :suburb )).to be_valid
  end

  it "is invalid without a locality" do
    suburb = build( :suburb, locality: nil )
    suburb.valid?
    expect(suburb.errors[:locality]).to include("can't be blank")
  end

  it "is invalid without a post code" do
    suburb = build( :suburb, post_code: nil)
    suburb.valid?
    expect(suburb.errors[:post_code]).to include("can't be blank")
  end

  it "returns error for invalid postcode" do 
		suburb = build( :suburb, post_code: 100 )
		suburb.valid?
		expect(suburb.errors[:post_code]).to include("is invalid.")
  end

  it "is valid with valid postcode" do 
		expect(build(:suburb, post_code: 3000)).to be_valid
  end

  it "has correct state with valid post code" do 
		suburb = build( :suburb, post_code: 4000 )
		suburb.valid?
    expect(suburb.state).to eq "QLD"
  end

  it "has nil state with invalid post code" do 
		suburb = build( :suburb, post_code: 100 )
		suburb.valid?
    expect(suburb.state).to eq nil
  end

end
