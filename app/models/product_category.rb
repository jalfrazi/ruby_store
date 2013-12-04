class ProductCategory < ActiveRecord::Base

  # ProductCategory belongs to Product
    belongs_to :product

  # ProductCategory has many Categories
    has_many :categories

end
