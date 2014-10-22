class SalesListParser
  attr_accessor :list_body, :sales_report_id

  def initialize(file, sales_report_id)
    self.list_body = file
    self.sales_report_id = sales_report_id
  end

  def rows
    list_body.split("\n")[1..-1]
  end

  def create_sales
    self.rows.each do |row|
      columns = split_columns(row)
      Sale.create(purchaser_name:columns[0], item_description: columns[1], item_price:columns[2], purchase_count: columns[3],
      merchant_address: columns[4], merchant_name:columns[5], sales_report_id: sales_report_id, sale_total_value: total_value(columns)).save
    end
  end

  def total_value(columns)
    columns[2].to_d * columns[3].to_i
  end

  def split_columns(row)
    row.split("\t")
  end

end
