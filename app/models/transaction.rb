class Transaction < ActiveRecord::Base
  belongs_to :transactionable, polymorphic: true
  belongs_to :user
  belongs_to :transaction_category
end
