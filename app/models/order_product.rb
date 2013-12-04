class OrderProduct < ActiveRecord::Base

  # OrderProduct belongs to some Order
    belongs_to :order

  # OrderProduct has many Products
    has_many :products

end
