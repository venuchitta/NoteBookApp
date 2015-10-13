class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :transactionable, polymorphic: true, index: false
      t.references :transaction_category, index: true, foreign_key: true
      t.timestamps null: false
    end
    add_index :transactions, ["id", "transactionable_type", "transactionable_id"], :unique => true, :name => 'trans_index'
  end
end
