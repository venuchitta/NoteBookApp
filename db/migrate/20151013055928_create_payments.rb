class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :type
      t.references :transaction, index: true, foreign_key: true
      t.references :invoice, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
