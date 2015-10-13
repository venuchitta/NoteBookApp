class CreateTaxLineItemDetails < ActiveRecord::Migration
  def change
    create_table :tax_line_item_details do |t|
      t.decimal :tax_percentage
      t.decimal :tax_amount
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
