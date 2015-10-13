class AddUserToTransaction < ActiveRecord::Migration
  def change
    add_column :transactions, :user_id, :integer, references: :users
  end
end
