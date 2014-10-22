class CreateSalesReports < ActiveRecord::Migration
  def change
    create_table :sales_reports do |t|
      t.date :report_date
      t.string :description

      t.timestamps
    end
  end
end
