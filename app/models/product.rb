class Product < ActiveRecord::Base

  # Product belongs to OrderProduct
    belongs_to :order_product

  # Product has one Type
    has_one :type

  # Product has many ProductCategories
    has_many :product_categories

  # Product has many ProductMaterials
    has_many :product_materials

  # Product has many ProductSizes
    has_many :product_sizes

    # Product has many Images
    has_many :product_sizes

end
