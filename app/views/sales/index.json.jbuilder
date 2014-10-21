json.array!(@sales) do |sale|
  json.extract! sale, :id, :purchaser_name, :string,, :item_description, :item_price, :purchase_count, :integer,, :merchant_address, :string,, :merchant_name
  json.url sale_url(sale, format: :json)
end
