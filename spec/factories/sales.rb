# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sale do
    purchaser_name "MyString"
    item_description "description"
    item_price 5
    purchase_count 50
    merchant_address "MyString"
    merchant_name "MyString"
    sale_total_value 250
  end
end
