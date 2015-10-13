class Invoice < ActiveRecord::Base
  
  belongs_to :customer
  
  has_many :payments
  has_many :sales_line_item_detail, dependent: :destroy
  has_many :products, through: :sales_line_item_details
  
  has_one :transacion, as: :transactionable
  has_one :sub_total_line_item_detail, dependent: :destroy
  has_one :tax_line_item_detail, dependent: :destroy
  has_one :discount_line_item_detail, dependent: :destroy
  
  accepts_nested_attributes_for :sales_line_item_detail, allow_destroy: true
  accepts_nested_attributes_for :sub_total_line_item_detail, allow_destroy: true
  accepts_nested_attributes_for :tax_line_item_detail, allow_destroy: true
  accepts_nested_attributes_for :discount_line_item_detail, allow_destroy: true
  
  before_update :update_attributes
  before_save :update_attributes
  after_save :update_attributes
  after_update :update_attributes
  after_initialize :update_attributes
  
  def update_attributes
    t_price = tot_price - discount_price
   # t_price - () (tax_precent * t_price)
  end
  
  def tot_price
    sales_line_item_detail.to_a.sum(&:total_price) 
  end
  
  def tax_precent
    tax_line_item_detail.tax_precent / 100
  end
  
  def discount_percent
    discount_line_item_detail.discount_percentage / 100
  end
  
end