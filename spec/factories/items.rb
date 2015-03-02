FactoryGirl.define do
  factory :item do
    price { Faker::Commerce.price }
  end
end
