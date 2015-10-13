class Customer < ActiveRecord::Base
  
  belongs_to :user
  
  has_one :shipping_address, class_name: 'Address', dependent: :destroy
  has_one :billing_address, class_name: 'Address', dependent: :destroy
  
  has_many :invoices, dependent: :destroy
  has_many :payments, dependent: :destroy
  
  accepts_nested_attributes_for :shipping_address, allow_destroy: true
  accepts_nested_attributes_for :billing_address, allow_destroy: true
  accepts_nested_attributes_for :payments, allow_destroy: true
  accepts_nested_attributes_for :invoices, allow_destroy: true
  
end
