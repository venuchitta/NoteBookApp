class CreateDiscountLineItemDetails < ActiveRecord::Migration
  def change
    create_table :discount_line_item_details do |t|
      t.decimal :discount_percentage
      t.decimal :discount_amount
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
