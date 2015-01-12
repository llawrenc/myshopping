require 'rails_helper'

describe Item do
  it "is valid with a description" do
    item = Item.new(
      description: 'Test Product')
    expect(item).to be_valid
  end

end
      
