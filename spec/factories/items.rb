# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item do
    sequence(:storeid) { |n| "{n}"}
    sequence(:itemdetailid) { |n| "{n}"}
    price { Faker::Commerce.price }
  end
end
