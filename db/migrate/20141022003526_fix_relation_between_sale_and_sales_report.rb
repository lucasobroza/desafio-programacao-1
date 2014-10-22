class FixRelationBetweenSaleAndSalesReport < ActiveRecord::Migration
  def change
    remove_column :sales, :salesreport_id
    add_reference :sales, :sales_report, index: true
  end
end
