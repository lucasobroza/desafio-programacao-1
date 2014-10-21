require 'rails_helper'

RSpec.describe "sales/show", :type => :view do
  before(:each) do
    @sale = assign(:sale, Sale.create!(
      :purchaser_name => "Purchaser Name",
      :string, => "String,",
      :item_description => "",
      :item_price => "",
      :purchase_count => "Purchase Count",
      :integer, => "Integer,",
      :merchant_address => "Merchant Address",
      :string, => "String,",
      :merchant_name => "Merchant Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Purchaser Name/)
    expect(rendered).to match(/String,/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Purchase Count/)
    expect(rendered).to match(/Integer,/)
    expect(rendered).to match(/Merchant Address/)
    expect(rendered).to match(/String,/)
    expect(rendered).to match(/Merchant Name/)
  end
end
