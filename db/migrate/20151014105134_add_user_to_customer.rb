class AddUserToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :user_id, :integer, references: :users
  end
end
