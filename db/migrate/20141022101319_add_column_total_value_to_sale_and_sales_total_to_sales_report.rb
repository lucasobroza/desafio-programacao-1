class AddColumnTotalValueToSaleAndSalesTotalToSalesReport < ActiveRecord::Migration
  def change
    remove_column :sales, :purchase_count
    remove_column :sales, :integer
    add_column :sales, :purchase_count, :integer
    add_column :sales, :sale_total_value, :decimal
    add_column :sales_reports, :report_total_value, :decimal
  end
end
