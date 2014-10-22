class AddRelationBetweenSaleAndSalesReport < ActiveRecord::Migration
  def change
    add_reference :sales, :salesreport, index: true
  end
end
