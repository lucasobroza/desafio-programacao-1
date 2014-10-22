# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :sales_report do
    report_date Date.today
    description "Um relatório cheeeeio de informção de compras"
    sales_list {File.new(Rails.root.join('test', 'fixtures', 'example_input.tab')) }
  end
end
