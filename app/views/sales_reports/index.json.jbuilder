json.array!(@sales_reports) do |sales_report|
  json.extract! sales_report, :id, :report_date, :description
  json.url sales_report_url(sales_report, format: :json)
end
