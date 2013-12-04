class Order < ActiveRecord::Base

  # Order belongs to any Customer
    belongs_to :customer

  # Order belongs to any Customer
    has_many :order_products



end
