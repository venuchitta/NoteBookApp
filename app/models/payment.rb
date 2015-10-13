class Payment < ActiveRecord::Base
  has_one :transacion, as: :transactionable
  belongs_to :invoice
  belongs_to :customer  
end