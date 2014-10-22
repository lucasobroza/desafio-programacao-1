class AddAttachmentSalesListToSalesReports < ActiveRecord::Migration
  def self.up
    change_table :sales_reports do |t|
      t.attachment :sales_list
    end
  end

  def self.down
    remove_attachment :sales_reports, :sales_list
  end
end
