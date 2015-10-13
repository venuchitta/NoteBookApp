class AddTotalPriceToSalesLineItemDetail < ActiveRecord::Migration
  def change
    add_column :sales_line_item_details, :total_price, :decimal
  end
end
