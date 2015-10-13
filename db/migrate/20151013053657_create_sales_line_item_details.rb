class CreateSalesLineItemDetails < ActiveRecord::Migration
  def change
    create_table :sales_line_item_details do |t|
      t.decimal :quantity
      t.decimal :amount
      t.datetime :date
      t.references :product, index: true, foreign_key: true
      t.references :invoice, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
