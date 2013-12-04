class ProductMaterial < ActiveRecord::Base

  # ProductMaterial belongs to Product
  belongs_to :product

  # ProductMaterial has many Materials
  has_many :materials

end
