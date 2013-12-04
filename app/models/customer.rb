class Customer < ActiveRecord::Base

  # Customer has only Address
  has_one :address

  #  Customer has many orders
  has_many :orders

end
