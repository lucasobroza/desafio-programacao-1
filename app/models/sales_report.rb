class SalesReport < ActiveRecord::Base

  has_many :sales, :dependent => :destroy

  has_attached_file :sales_list

  after_save :parse_sales_list

  validates :sales_list, attachment_presence: true

  validates :description, presence: true

  validates_attachment :sales_list, content_type: { content_type: ["application/octet-stream","text/plain"] }

  validates_attachment_file_name :sales_list, :matches => [/\.tab\Z/]

  def parse_sales_list
    SalesListParser.new(File.open(self.sales_list.path).read, self.id).create_sales
  end

  def total_of_sales
    self.sales.sum(:sale_total_value).to_f
  end
end
