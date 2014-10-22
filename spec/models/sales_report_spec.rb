require 'rails_helper'

RSpec.describe SalesReport, :type => :model do

  it "should not allow an image as sales_list" do
    report = FactoryGirl.build(:sales_report, :sales_list => File.new(Rails.root.join('test', 'fixtures', '.keep')))
    report.should_not be_valid
    report.errors[:sales_list].should == ["Este campo não é válido.", "Este campo não é válido."]
  end

  it "should validate the presence of sales_list" do
    report = FactoryGirl.build(:sales_report, sales_list: nil)
    report.should_not be_valid
    report.errors[:sales_list].should == ["Não pode ficar em branco"]
  end

  it "should validate the presence of description" do
    report = FactoryGirl.build(:sales_report, sales_list: nil)
    report.should_not be_valid
    report.errors[:sales_list].should == ["Não pode ficar em branco"]
  end

  it "should generate the sales of a sale report from it sales_list" do
    report = FactoryGirl.create(:sales_report)
    report.sales.size.should == 4
  end

  it "should sum the total value of all the sales" do
    report = FactoryGirl.create(:sales_report)
    report.total_of_sales.should == 95
  end

  it "should delete all the sales if it sales report is deleted" do
    report = FactoryGirl.create(:sales_report)
    Sale.count.should == 4
    report.destroy
    Sale.count.should == 0
  end
end
