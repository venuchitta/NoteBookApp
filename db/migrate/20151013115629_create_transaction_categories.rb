class CreateTransactionCategories < ActiveRecord::Migration
  def change
    create_table :transaction_categories do |t|

      t.timestamps null: false
    end
  end
end
