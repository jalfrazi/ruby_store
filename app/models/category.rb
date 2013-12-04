class Category < ActiveRecord::Base

  # Category belongs to ProductCategory
  belongs_to :product_category

end
