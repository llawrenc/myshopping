
FactoryGirl.define do
  factory :itemdetail do
    description { Faker::Commerce.product_name }
    barcode { Faker::Number.number(11) }
    factory :itemdetail_with_item do
      after(:create) do |itemdetail|
        create(:item, itemdetail: itemdetail)
      end
    end
  end
end
