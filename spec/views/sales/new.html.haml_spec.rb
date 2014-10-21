require 'rails_helper'

RSpec.describe "sales/new", :type => :view do
  before(:each) do
    assign(:sale, Sale.new(
      :purchaser_name => "MyString",
      :string, => "MyString",
      :item_description => "",
      :item_price => "",
      :purchase_count => "MyString",
      :integer, => "MyString",
      :merchant_address => "MyString",
      :string, => "MyString",
      :merchant_name => "MyString"
    ))
  end

  it "renders new sale form" do
    render

    assert_select "form[action=?][method=?]", sales_path, "post" do

      assert_select "input#sale_purchaser_name[name=?]", "sale[purchaser_name]"

      assert_select "input#sale_string,[name=?]", "sale[string,]"

      assert_select "input#sale_item_description[name=?]", "sale[item_description]"

      assert_select "input#sale_item_price[name=?]", "sale[item_price]"

      assert_select "input#sale_purchase_count[name=?]", "sale[purchase_count]"

      assert_select "input#sale_integer,[name=?]", "sale[integer,]"

      assert_select "input#sale_merchant_address[name=?]", "sale[merchant_address]"

      assert_select "input#sale_string,[name=?]", "sale[string,]"

      assert_select "input#sale_merchant_name[name=?]", "sale[merchant_name]"
    end
  end
end
