class CreateSubTotalLineItemDetails < ActiveRecord::Migration
  def change
    create_table :sub_total_line_item_details do |t|
      t.decimal :sub_total_amount
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
