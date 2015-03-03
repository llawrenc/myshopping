# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :item_store, :class => 'ItemStore' do
    item_id 1
    store_id 1
    price 4.99
  end
end
