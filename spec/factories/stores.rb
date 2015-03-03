# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :store do
    store_name "BigShop"
    address1 "BigShop Centre"
    address2 "1 Shop Ave"
    suburb_id 1
    lat "9.99"
    lng "9.99"
  end

  factory :store_with_item do
    after(:create) do |store|
      create(:item, store: store)
    end
  end
end
