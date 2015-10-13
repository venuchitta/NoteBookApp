class Product < ActiveRecord::Base
  belongs_to :product_category
  
  has_many :sales_line_item_details
  has_many :invoices, through: :sales_line_item_details
end
