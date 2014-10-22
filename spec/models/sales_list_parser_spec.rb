require 'rails_helper'

RSpec.describe SalesListParser do
  let(:parser){SalesListParser.new(File.new(Rails.root.join('test', 'fixtures', 'example_input.tab')).read, 1)}
  it "should generate 4 rows exluding the header" do
    parser.rows.size.should == 4
  end

  it "should separate the first row in 6 columns" do
    columns = parser.split_columns(parser.rows.first)
    columns.size.should == 6
  end

  it "should calculate the total value of a sale" do
    columns = parser.split_columns(parser.rows.first)
    parser.total_value(columns).should == 20
  end

  it "should generate 4 sales" do
    parser.create_sales
    Sale.count.should == 4
  end

end
