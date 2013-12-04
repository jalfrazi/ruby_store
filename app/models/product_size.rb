class ProductSize < ActiveRecord::Base

  # ProductSize belongs to Product
  belongs_to :product

  # ProductSize has many Sizes
  has_many :sizes

end
