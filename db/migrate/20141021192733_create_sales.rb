class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :purchaser_name
      t.string :item_description
      t.decimal :item_price
      t.string :purchase_count
      t.string :integer
      t.string :merchant_address
      t.string :merchant_name

      t.timestamps
    end
  end
end
