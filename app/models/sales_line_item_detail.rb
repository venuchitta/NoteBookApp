class SalesLineItemDetail < ActiveRecord::Base
  belongs_to :product
  belongs_to :invoice
end
