require 'rails_helper'

describe Item do
  it "has a valid factory" do
    expect(build(:item)).to be_valid
  end
end
  
