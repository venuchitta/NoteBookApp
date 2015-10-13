class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.decimal :total_amount
      t.decimal :balance_due
      t.string :invoice_status
      t.string :special_notes
      t.references :customer, index: true, foreign_key: true
      t.references :transaction, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
