require 'rails_helper'

RSpec.describe "sales/index", :type => :view do
  before(:each) do
    assign(:sales, [
      Sale.create!(
        :purchaser_name => "Purchaser Name",
        :string, => "String,",
        :item_description => "",
        :item_price => "",
        :purchase_count => "Purchase Count",
        :integer, => "Integer,",
        :merchant_address => "Merchant Address",
        :string, => "String,",
        :merchant_name => "Merchant Name"
      ),
      Sale.create!(
        :purchaser_name => "Purchaser Name",
        :string, => "String,",
        :item_description => "",
        :item_price => "",
        :purchase_count => "Purchase Count",
        :integer, => "Integer,",
        :merchant_address => "Merchant Address",
        :string, => "String,",
        :merchant_name => "Merchant Name"
      )
    ])
  end

  it "renders a list of sales" do
    render
    assert_select "tr>td", :text => "Purchaser Name".to_s, :count => 2
    assert_select "tr>td", :text => "String,".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Purchase Count".to_s, :count => 2
    assert_select "tr>td", :text => "Integer,".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Address".to_s, :count => 2
    assert_select "tr>td", :text => "String,".to_s, :count => 2
    assert_select "tr>td", :text => "Merchant Name".to_s, :count => 2
  end
end
